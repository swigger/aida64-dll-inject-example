#pragma once

void* exec_alloc(size_t len);
void exec_free(void * addr, size_t len);
bool direct_hook(const void* target, const void* hook, void** old_func);
