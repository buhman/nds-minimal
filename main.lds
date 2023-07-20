OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
MEMORY
{
  rom : ORIGIN = 0x00000000, LENGTH = 256K
  ram : ORIGIN = 0x02000000, LENGTH = 256K
}
SECTIONS
{
  . = 0x00000000;

  .text.header ALIGN(4) : SUBALIGN(4)
  {
    KEEP(*(.text.header))
  } > rom AT> rom

  . = 0x02000000;

  .text.arm9 ALIGN(4) : SUBALIGN(4)
  {
    KEEP(*(.text.9start))
  } > ram AT> rom

  .text.arm7 ALIGN(4) : SUBALIGN(4)
  {
    KEEP(*(.text.7start))
  } > ram AT> rom
}

_arm9_offset = LOADADDR(.text.arm9);
_arm9_entry = ADDR(.text.arm9);
_arm9_addr = ADDR(.text.arm9);
_arm9_size = SIZEOF(.text.arm9);

_arm7_offset = LOADADDR(.text.arm7);
_arm7_entry = ADDR(.text.arm7);
_arm7_addr = ADDR(.text.arm7);
_arm7_size = SIZEOF(.text.arm7);

_rom_size = SIZEOF(.text.header) + SIZEOF(.text.arm9) + SIZEOF(.text.arm7);
_header_size = SIZEOF(.text.header);
