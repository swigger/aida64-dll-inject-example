#include "pch.h"
#include "keygen.h"

#pragma comment(lib, "version.lib")

namespace {
	constexpr char ALPHABET[] = "DY14UF3RHWCXLQB6IKJT9N5AGS2PM8VZ7E";

	bool base34_encode(uint32_t value, size_t width, std::string& out) {
		if (value == ~0u) {
			// generate random value for ~0u, which is used as a placeholder for date fields.
			static std::mt19937 rng(std::random_device{}());
			uint32_t max_value = 1;
			for (size_t i=0; i<width; ++i) {
				max_value *= 34;
			}
			value = rng() % max_value;
		}

		uint64_t limit = 1;
		for (size_t i = 0; i < width; ++i) {
			limit *= 34;
		}
		if (value >= limit) {
			return false;
		}

		std::string chunk(width, 'D');
		for (size_t i = width; i-- > 0;) {
			chunk[i] = ALPHABET[value % 34];
			value /= 34;
		}
		out += chunk;
		return true;
	}

	std::string group_key(const std::string& raw_key) {
		std::string grouped;
		grouped.reserve(raw_key.size() + raw_key.size() / 5);
		for (size_t i = 0; i < raw_key.size(); ++i) {
			if (i != 0 && i % 5 == 0) {
				grouped.push_back('-');
			}
			grouped.push_back(raw_key[i]);
		}
		return grouped;
	}

	bool contains_icase(const std::wstring& text, const wchar_t* needle) {
		return text.find(needle) != std::wstring::npos;
	}

	void to_lower_inplace(std::wstring& text) {
		std::transform(text.begin(), text.end(), text.begin(), [](wchar_t ch) {
			return static_cast<wchar_t>(towlower(ch));
		});
	}

	std::wstring query_version_string(const void* version_info, WORD language, WORD codepage, const wchar_t* name) {
		wchar_t sub_block[64]{};
		swprintf_s(sub_block, L"\\StringFileInfo\\%04x%04x\\%s", language, codepage, name);

		void* value = nullptr;
		UINT value_size = 0;
		if (!VerQueryValueW(version_info, sub_block, &value, &value_size) || value == nullptr || value_size == 0) {
			return {};
		}
		return std::wstring(static_cast<const wchar_t*>(value));
	}

	std::wstring read_version_info_product_name(HMODULE mod) {
		wchar_t path[MAX_PATH]{};
		const DWORD path_len = GetModuleFileNameW(mod, path, static_cast<DWORD>(std::size(path)));
		if (path_len == 0 || path_len >= std::size(path)) {
			return {};
		}

		DWORD handle = 0;
		const DWORD version_size = GetFileVersionInfoSizeW(path, &handle);
		if (version_size == 0) {
			return {};
		}

		std::vector<BYTE> version_info(version_size);
		if (!GetFileVersionInfoW(path, 0, version_size, version_info.data())) {
			return {};
		}

		struct Translation {
			WORD language;
			WORD codepage;
		};

		void* translation_ptr = nullptr;
		UINT translation_size = 0;
		if (VerQueryValueW(version_info.data(), L"\\VarFileInfo\\Translation", &translation_ptr, &translation_size)
			&& translation_ptr != nullptr
			&& translation_size >= sizeof(Translation)) {
			const auto* translations = static_cast<const Translation*>(translation_ptr);
			const size_t translation_count = translation_size / sizeof(Translation);
			for (size_t i = 0; i < translation_count; ++i) {
				std::wstring product_name = query_version_string(
					version_info.data(), translations[i].language, translations[i].codepage, L"ProductName");
				if (!product_name.empty()) {
					return product_name;
				}
			}
		}

		for (const Translation fallback : { Translation{ 0x0409, 0x04B0 }, Translation{ 0x0409, 1200 } }) {
			std::wstring product_name = query_version_string(version_info.data(), fallback.language, fallback.codepage, L"ProductName");
			if (!product_name.empty()) {
				return product_name;
			}
		}

		return {};
	}
}

ProductType detect_product_type()
{
	const HMODULE mod = GetModuleHandleW(nullptr);
	std::wstring product_name = read_version_info_product_name(mod);
	to_lower_inplace(product_name);

	if (contains_icase(product_name, L"business")) {
		return VER_BUSINESS;
	}
	if (contains_icase(product_name, L"extreme")) {
		return VER_EXTREME;
	}
	if (contains_icase(product_name, L"engineer")) {
		return VER_ENGINEER;
	}
	if (contains_icase(product_name, L"network")) {
		return VER_NETWORK;
	}
	// may add some more checks here. just fallback.
	return VER_BUSINESS;
}

std::string gen_key(ProductType pt, uint32_t subtype, std::time_t issue_date, std::time_t expire, std::time_t support_due)
{
	const uint32_t product_id = static_cast<uint32_t>(pt);
	if (product_id == 0 || product_id > 999) {
		return {};
	}
	const uint32_t seed_low = 0xccU;

	std::string val;
	val.reserve(25);
	if (!base34_encode(product_id ^ seed_low ^ 0xBFU, 2, val)
		|| !base34_encode(~0u, 2, val)
		|| !base34_encode(~0u, 2, val)
		|| !base34_encode(~0u, 2, val)
		|| !base34_encode(~0u, 4, val)
		|| !base34_encode(~0u, 4, val)
		|| !base34_encode(~0u, 3, val)
		|| !base34_encode(~0u, 3, val)
		|| !base34_encode(~0u, 2, val)) {
		return {};
	}
	val += 'X'; // the checksum.
	return group_key(val);
}
