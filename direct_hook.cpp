#include "pch.h"
#include "disasmlen.h"

static std::once_flag once;
static HANDLE g_hHeap;

void* exec_alloc(size_t len) {
	std::call_once(once, []() {
		g_hHeap = HeapCreate(HEAP_CREATE_ENABLE_EXECUTE, 0, 0);
	});
	return HeapAlloc(g_hHeap, HEAP_ZERO_MEMORY, len);
}

void exec_free(void* addr, size_t len) {
	if (!addr) return;
	HeapFree(g_hHeap, 0, addr);
}

static bool is_near(const void* s, const void * t) {
	if constexpr (sizeof(void*) == 8) {
		intptr_t diff = (char*)t - ((char*)s + 5);
		auto sign = (diff >> 31);
		return sign == 0 || sign == -1;
	}
	return true;
}

static bool gen_jmp(uint8_t * &cp, uintptr_t * &dt, uint8_t sc, const void * tgt) {
	if (sc >= 0x70 && sc <= 0x7f) {
		cp[0] = sc;   // jxx short &cp[4]
		cp[1] = 0x2;
		cp[2] = 0xeb; // jmp short &cp[10]
		cp[3] = 0x6;
		cp += 4;
		sc = 0xeb;
	}
	if (sc == 0xeb || sc == 0xe9) {
		cp[0] = 0xff;
		cp[1] = 0x25;
		*(int*)&cp[2] = (int)((uint8_t*)dt - &cp[6]);
		*dt++ = (uintptr_t)tgt;
		cp += 6;
		return true;
	}
	return false;
}

static bool patch(const void * addr, size_t sz, const void * bytes) {
	SIZE_T wtn = 0;
	HANDLE pro = GetCurrentProcess();
	if (WriteProcessMemory(pro, (void*)addr, bytes, sz, &wtn)) {
		FlushInstructionCache(pro, (void*)addr, sz);
		return true;
	}
	return false;
}

// use 5/12bytes to jump to any where.
bool direct_hook(const void* target, const void* hook, void** old_func) {
	if (!target || !hook || !old_func) return false;
	auto t = (uint8_t*)target;
	if (t[0] == 0xe9 || t[0] == 0xc2 || t[0] == 0xc3 || t[0] == 0xcc) {
		return false;
	}

	constexpr size_t reserved_code_size = 32;
	constexpr size_t exec_size = 64;
	uint8_t* const trampo0 = (uint8_t*) exec_alloc(exec_size);
	memset(trampo0, 0x90, reserved_code_size);

	auto trampo = trampo0;
	uintptr_t* trampo_data = (uintptr_t*)(trampo0 + reserved_code_size);
	bool is_near_ = is_near(target, hook);
	auto te = t + (is_near_ ? 5 : 12);
	for ( ; t < te;) {
		uint32_t flg = 0;
		int len = get_instruction_length(t, &flg);
		if (len < 0) break;

		if ((t[0] & 0xf0) == 0x70 || t[0] == 0xeb) {
			// assume jumps out the need hook area.
			gen_jmp(trampo, trampo_data, t[0], t + len + (int8_t)t[1]);
		}
		else {
			memcpy(trampo, t, len);
			trampo += len;
		}
		t += len;
	}
	if (t >= te) {
		gen_jmp(trampo, trampo_data, 0xeb, t);
		uint8_t jmpc[12];
		if (is_near_) {
			jmpc[0] = 0xe9;
			*(int*)(jmpc + 1) = (int)((char*)hook - (char*)target - 5);
		}
		else {
			jmpc[0] = 0x48;
			jmpc[1] = 0xb8;
			*(const void**)(&jmpc[2]) = hook;
			jmpc[10] = 0xff;
			jmpc[11] = 0xe0;
		}
		if (patch(target, is_near_ ? 5 : 12, jmpc)) {
			*old_func = trampo0;
			return true;
		}
	}
	exec_free(trampo0, exec_size);
	return false;
}
