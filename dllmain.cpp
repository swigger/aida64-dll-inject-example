// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"
#include "directhook.h"
#include "keygen.h"
#pragma comment(lib, "advapi32.lib")

namespace {
	const char* find_ic(const char* ps, const char* pse, const char* pt) {
		size_t len = strlen(pt);
		if (!len) return nullptr;
		for (const char* p = ps; p < pse; ++p) {
			if (p + len > pse) break;
			if (strnicmp(p, pt, len) == 0) return p;
		}
		return nullptr;
	}
	int find_binary(const uint8_t* src, size_t srclen, const uint8_t* ptn, size_t ptnlen, const uint8_t* addrs[], int nmax) {
		int n = 0;
		for (size_t i = 0; i + ptnlen <= srclen; ++i) {
			if (src[i] == ptn[0] && memcmp(src + i, ptn, ptnlen) == 0) {
				addrs[n++] = src + i;
				if (n == nmax) break;
			}
		}
		return n;
	}

#define DECL(cls, name, base, off) cls * name = (cls*)((char*)(base) + (INT_PTR)off)
	bool FindIAT2(HMODULE mod, LPCSTR dname, void* func, void*** oPos)
	{
		if (!func) return false;
		DECL(IMAGE_DOS_HEADER, dosh, mod, 0);
		DECL(IMAGE_NT_HEADERS, nth, mod, dosh->e_lfanew);

		DECL(IMAGE_IMPORT_DESCRIPTOR, des, mod, nth->OptionalHeader.DataDirectory[1].VirtualAddress);
		DWORD sz = (nth->OptionalHeader.DataDirectory[1].Size) / sizeof(IMAGE_THUNK_DATA);

		for (DWORD j = 0; j < sz && des[j].FirstThunk; ++j)
		{
			char* dname1 = (char*)mod + des[j].Name;
			if (dname && _stricmp(dname, dname1) != 0) continue;
			DECL(IMAGE_THUNK_DATA, ith, mod, des[j].FirstThunk);

			for (int i = 0; ith[i].u1.Function; ++i)
			{
				if (ith[i].u1.Function == (DWORD_PTR)func)
				{
					*oPos = (void**)&ith[i].u1.Function;
					return true;
				}
			}
		}
		return false;
	}
}

namespace cfg {
	template <size_t N>
	consteval auto toarr(const char * s) {
		std::array<uint8_t, N> r{};
		size_t len = 0;
		for (size_t i = 0; s[i] != 0; ++i, ++len);
		size_t j = 0;
		for (size_t i = 0; i<len; ++i) {
			if (s[i] == ' ' || s[i] == '\t' || s[i] == '\r' || s[i] == '\n') continue;
			if (s[i] == '-' || s[i] == ':' || s[i] == '%') continue;
			if (i + 1 >= len) {
				throw "bad input";
			}
			uint8_t ch1 = s[i+0];
			uint8_t ch2 = s[i+1];
			i ++;
			ch1 = ch1 > '9' ? (ch1 | 0x20) - 'a' + 10 : (ch1 - '0');
			ch2 = ch2 > '9' ? (ch2 | 0x20) - 'a' + 10 : (ch2 - '0');
			r[j++] = (ch1 << 4) | ch2;
		}
		if (j != N)
			throw "bad length";
		return r;
	}

#ifdef _M_IX86
	// ; int __usercall __linkproc__ LStrFromPChar_0@<eax>(void* @<eax>, char* @<edx>)
	// CODE:00405680   @@LStrFromPChar_0
	constexpr auto ptn_LStrFromPChar = toarr<16>("31C985D27421523A0A74173A4A017411");
#elif defined(_M_AMD64)
	constexpr auto ptn_LStrFromPChar = toarr<16>("4883EC2833C04885D274104889D0EB04");
#else
#error xxx
#endif
}

namespace ui {
	struct stEnumChild {
		std::set<HWND> found;

		static BOOL CALLBACK proc(HWND hWnd, LPARAM lp) {
			auto this_ = (stEnumChild*)lp;
			wchar_t cn[100];
			GetClassNameW(hWnd, cn, _countof(cn));
			if (wcscmp(cn, L"TEdit") == 0)
				this_->found.insert(hWnd);
			return TRUE;
		}
	};
	static void fillsn(HWND hWnd) {
		stEnumChild st;
		EnumChildWindows(hWnd, &stEnumChild::proc, (LPARAM)&st);
		if (st.found.size() == 1) {
			auto prod = detect_product_type();
			string sn = gen_key(prod, 820);
			std::wstring wsn;
			wsn.insert(wsn.end(), sn.begin(), sn.end());
			SetWindowTextW(*st.found.begin(), wsn.c_str());
		}
	}

	namespace {
		HHOOK g_cbt_hook = 0;
		UINT_PTR g_fill_timer = 0;
		HWND g_pending_hwnd = 0;
		std::set<HWND> g_wndset;

		bool match_target_window(HWND hWnd) {
			wchar_t cls[256]{};
			if (GetClassNameW(hWnd, cls, _countof(cls)) <= 0) {
				return false;
			}
			return wcsstr(cls, L"TForm_EnterProductKey") != nullptr;
		}

		void CALLBACK on_fill_timer(HWND, UINT, UINT_PTR idEvent, DWORD) {
			if (idEvent != g_fill_timer) {
				return;
			}
			KillTimer(0, g_fill_timer);
			g_fill_timer = 0;

			HWND hWnd = g_pending_hwnd;
			g_pending_hwnd = 0;
			if (hWnd && IsWindow(hWnd)) {
				fillsn(hWnd);
			}
		}

		LRESULT CALLBACK cbt_proc(int code, WPARAM wParam, LPARAM lParam) {
			if (code == HCBT_ACTIVATE) {
				HWND hWnd = (HWND)wParam;
				if (match_target_window(hWnd) && g_wndset.insert(hWnd).second) {
					g_pending_hwnd = hWnd;
					if (g_fill_timer) {
						KillTimer(0, g_fill_timer);
					}
					g_fill_timer = SetTimer(0, 0, 10, on_fill_timer);
				}
			}
			else if (code == HCBT_DESTROYWND) {
				g_wndset.erase((HWND)wParam);
			}
			return CallNextHookEx(g_cbt_hook, code, wParam, lParam);
		}
	}

	void start() {
		if (!g_cbt_hook)
			g_cbt_hook = SetWindowsHookExW(WH_CBT, cbt_proc, 0, GetCurrentThreadId());
	}
	void stop() {
		if (g_cbt_hook) {
			UnhookWindowsHookEx(g_cbt_hook);
			g_cbt_hook = 0;
		}
	}
}

static void patch_xml(char* xml, size_t len) {
	char* ps = xml;
	char* pse = xml + len;
	for (;ps<pse;) {
		char* p1 = (char*) find_ic(ps, pse, "<nod");
		if (!p1) break;
		char* p2 = (char*) find_ic(p1, pse, "</nod");
		if (!p2) break;
		p2 = strchr(p2, '>');
		if (!p2) break;
		p2++;
		while (isspace(*p2)) p2++;
		size_t xlen = pse - p2;
		memmove(p1, p2, xlen+1);
		pse = p1 + xlen;
		ps = p1;
	}
}

#ifdef _M_IX86

#else
void (*trampo_LStrFromPChar)(void* a1, char* a2, uint16_t codepage);
void hook_LStrFromPChar(void* a1, char* a2, uint16_t codepage) {
	uint8_t* pc = (uint8_t*)a2;
	if (pc[0] == 0xef && pc[1] == 0xbb && pc[2] == 0xbf) {
		pc += 3;
	}
	while (isspace(*pc)) pc++;
	if (*pc == '<') {
		patch_xml((char*)pc, strlen((char*)pc));
	}
	return trampo_LStrFromPChar(a1, a2, codepage);
}
#endif

static bool hookFunc();
namespace upxed {
	static FARPROC WINAPI MyGetProcAddress(HMODULE hModule, LPCSTR lpProcName) {
		if (strcmp(lpProcName, "GetKeyboardType") == 0) {
			hookFunc();
		}
		return GetProcAddress(hModule, lpProcName);
	}
	static bool is_upx(HMODULE mod) {
		PIMAGE_DOS_HEADER dosh = (PIMAGE_DOS_HEADER)mod;
		PIMAGE_NT_HEADERS nth = (PIMAGE_NT_HEADERS)((char*)mod + dosh->e_lfanew);
		PIMAGE_SECTION_HEADER sec = (PIMAGE_SECTION_HEADER)(nth + 1);
		for (int i = 0; i < nth->FileHeader.NumberOfSections; i++, sec++) {
			if (strcmp((char*)sec->Name, "UPX0") == 0) {
				// auto start = mod + sec->VirtualAddress;
				// auto size = sec->Misc.VirtualSize;
				return true;
			}
		}
		return false;
	}
	bool hook_iat(HMODULE mod) {
		void** pgpa = 0;
		char* gpa = (char*)GetProcAddress;
#ifdef _DEBUG
		// gpa might be a thunk in debug build, skip the jump and get the real address.
		if (gpa[0] == 0xe9) {
			int32_t off = *(int32_t*)(gpa + 1);
			gpa += 5 + off;
		}
		if (gpa[0] == 0xff && gpa[1] == 0x25) {
			int32_t off = *(int32_t*)(gpa + 2);
			gpa = *(char**)(gpa + 6 + off);
		}
#endif
		FindIAT2(mod, "kernel32.dll", gpa, &pgpa);
		if (pgpa) {
			void* repl = MyGetProcAddress;
			return !! WriteProcessMemory(GetCurrentProcess(), pgpa, &repl, sizeof(repl), 0);
		}
		return false;
	}
}

static bool hookFunc() {
	auto is_code = [](const char * name) {
		char tmp[8]{};
		char* p = tmp;
		for (int i=0; i<7 && name[i]; i++) {
			if (name[i] == '.') continue;
			*p++ = (name[i] >= 'A' && name[i] <= 'Z') ? name[i] + 0x20 : name[i];
		}
		return strcmp(tmp, "text") == 0 || strcmp(tmp, "code") == 0 || strcmp(tmp, "upx0") == 0;
	};
	auto is_data = [](const char* name) {
		char tmp[8]{};
		char* p = tmp;
		for (int i = 0; i < 7 && name[i]; i++) {
			if (name[i] == '.') continue;
			*p++ = (name[i] >= 'A' && name[i] <= 'Z') ? name[i] + 0x20 : name[i];
		}
		return strcmp(tmp, "data") == 0 || strcmp(tmp, "upx0") == 0;
	};

	uint8_t* mod = (uint8_t*)GetModuleHandleA(0);
	PIMAGE_DOS_HEADER dosh = (PIMAGE_DOS_HEADER)mod;
	PIMAGE_NT_HEADERS nth = (PIMAGE_NT_HEADERS)(mod + dosh->e_lfanew);
	PIMAGE_SECTION_HEADER sec = (PIMAGE_SECTION_HEADER)(nth + 1);
	const uint8_t* funcs[16];
	int n_funcs = 0;
	uint8_t* data_start = 0;
	size_t data_size = 0;

	for (int i = 0; i < nth->FileHeader.NumberOfSections; i++, sec++) {
		if (is_code((char*)sec->Name)) {
			auto start = mod + sec->VirtualAddress;
			auto size = sec->Misc.VirtualSize;
			n_funcs = find_binary(start, size, cfg::ptn_LStrFromPChar.data(),
				cfg::ptn_LStrFromPChar.size(), funcs, _countof(funcs));
		}
		if (is_data((char*)sec->Name)) {
			data_start = mod + sec->VirtualAddress;
			data_size = sec->Misc.VirtualSize;
		}
	}
	// hook lstrFromPChar
	if (n_funcs > 0) {
		return direct_hook(funcs[0], hook_LStrFromPChar, (void**)&trampo_LStrFromPChar);
	}
	// 这两个没有用到，只是演示也可以在data中查找想要的特征，比如：清除黑名单。
	(void)data_start;
	(void)data_size;
	return false;
}

static void NTAPI HackAida64(ULONG_PTR Parameter) {
	hookFunc();
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD reason, PVOID lpReserved)
{
	switch (reason)
	{
	case DLL_PROCESS_ATTACH:
		ui::start();
		if (HMODULE mod = GetModuleHandleW(0); upxed::is_upx(mod))
		{
			upxed::hook_iat(mod);
		} else QueueUserAPC(HackAida64, GetCurrentThread(), 0);
		break;
	case DLL_PROCESS_DETACH:
		ui::stop();
		break;
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
		break;
	}
	return TRUE;
}

struct funcdesc_t {
	const char* name;
	intptr_t addr;
};

extern "C" void __fastcall fake_dll_resolve(funcdesc_t* tgt, intptr_t* paddr)
{
	static auto mod = []() -> HMODULE {
		const char* g_dll = "C:\\Windows\\System32\\winmm.dll";
		HMODULE mod = GetModuleHandleA(g_dll);
		if (mod == 0) mod = LoadLibraryA(g_dll);
		return mod;
	}();
	*paddr = tgt->addr = (intptr_t)GetProcAddress(mod, tgt->name);
}
