
ENTRY(reset_handler)

MEMORY {
	SRAM	(xrw):	ORIGIN = 0x20000000,	LENGTH = 64K
	FLASH	(xrw):	ORIGIN = 0x08000000,	LENGTH = 512K
}

SECTIONS {
	.text : {
		*(.text)
	} > FLASH
}
