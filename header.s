	.section .text.header

	.fill 12,1,0x0    /* Game Title */
	.ascii "CODE"     /* Game Code */
	.ascii "00"       /* Maker Code */
	.byte 0x0         /* Unit Code */
	.byte 0x0         /* Encryption Seed Select */
	.byte 0x8         /* Device capacity */
	.fill 7,1,0x0     /* Reserved */
	.byte 0x0         /* Reserved */
	.byte 0x0         /* NDS region */
	.byte 0x0         /* ROM version */
	.byte 0x0         /* Autostart */
	.long _arm9_offset /* ARM9 rom offset */
	.long _arm9_entry /* ARM9 entry address */
	.long _arm9_addr  /* ARM9 ram address */
	.long _arm9_size  /* ARM9 size */
	.long _arm7_offset /* ARM7 rom offset */
	.long _arm7_entry /* ARM7 entry address */
	.long _arm7_addr  /* ARM7 ram address */
	.long _arm7_size  /* ARM7 size */
	.long 0x00000000  /* File name table offset */
	.long 0x00000000  /* File name table size */
	.long 0x00000000  /* File allocation table offset */
	.long 0x00000000  /* file allocation table size */
	.long 0x00000000  /* ARM9 overlay offset */
	.long 0x00000000  /* ARM9 overlay size */
	.long 0x00000000  /* ARM7 overlay offset */
	.long 0x00000000  /* ARM7 overlay size */
	.long 0x00586000  /* 040001a4 setting for normal commands */
	.long 0x001808F8  /* 040001a4 setting for KEY1 commands */
	.long 0x00000000  /* Icon/Title offset */
	.short 0x8e6e 	  /* Secure Area Checksum */
	.short 0x0d7e     /* Secure Area Delay */
	.long 0x02000a58  /* ARM9 auto load list hook ram address */
	.long 0x02380158  /* ARM7 auto load list hook ram address */
	.fill 8,1,0x0     /* Secure Area Disable */
	.long _rom_size   /* Total used rom size */
	.long _header_size /* ROM header size */
	.fill 4,1,0x0     /* Reserved */
	.fill 8,1,0x0     /* Reserved */
	.short 0x0000     /* NAND end of ROM area */
	.short 0x0000     /* NAND start of RW area */
	.fill 24,1,0x0    /* Reserved */
	.fill 16,1,0x0    /* Reserved */
	.include "logo.s" /* Nintendo logo */
	.short 0xcf56     /* Nintendo logo checksum */
	.short 0xffff     /* Header checksum */
	.long 0x00000000  /* Debug rom offset */
	.long 0x00000000  /* Debug rom size */
	.long 0x00000000  /* Debug ram address */
	.fill 4,1,0x0     /* Reserved */
	.balign 0x8000,0x0 /* Padding */
