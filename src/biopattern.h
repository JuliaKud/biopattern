#pragma once

#define DISK_NAME_LEN	32

struct counter {
	__u64 last_sector;
	__u64 bytes;
	__u32 sequential;
	__u32 random;
};
