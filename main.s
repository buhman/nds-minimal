	.section .text.9start

        mov r0, #0x4000000 /* IO_REG */
        mov r1, #0x0
        orr r1, r1, #(1 << 7) /* DISPCNT__FORCED_BLANK */
        strh r1, [r0, #0x000] /* DISPCNT */

forever9:
	mov r1, #0x9
	b forever9


	.section .text.7start
forever7:
	mov r1, #0x7
	b forever7
