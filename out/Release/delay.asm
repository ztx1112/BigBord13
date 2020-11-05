;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module delay
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DelayUs
	.globl _Delay
	.globl _delay_ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_DelayUs_us_65536_4:
	.ds 2
_Delay_ms_65536_7:
	.ds 2
_delay_ms_n_65536_11:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayUs'
;------------------------------------------------------------
;us                        Allocated with name '_DelayUs_us_65536_4'
;i                         Allocated with name '_DelayUs_i_65536_5'
;n                         Allocated with name '_DelayUs_n_65536_5'
;------------------------------------------------------------
;	.\lib\delay.c:3: void DelayUs(uint16_t us)
;	-----------------------------------------
;	 function DelayUs
;	-----------------------------------------
_DelayUs:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_DelayUs_us_65536_4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\lib\delay.c:5: uint16_t i, n = (us * CLOCK) >> 5;
	mov	dptr,#_DelayUs_us_65536_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
;	.\lib\delay.c:6: for (i = 0; i < n; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	.\lib\delay.c:8: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;ms                        Allocated with name '_Delay_ms_65536_7'
;i                         Allocated with name '_Delay_i_65536_8'
;n                         Allocated with name '_Delay_n_65536_8'
;------------------------------------------------------------
;	.\lib\delay.c:10: void Delay(uint16_t ms)
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Delay_ms_65536_7
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\lib\delay.c:13: while (ms--)
	mov	dptr,#_Delay_ms_65536_7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00102$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00127$
	dec	r7
00127$:
	mov	dptr,#_Delay_ms_65536_7
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jz	00114$
;	.\lib\delay.c:15: for (i = 0; i < n; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,#0xe0
	mov	a,r5
	subb	a,#0x03
	jnc	00102$
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00114$:
	mov	dptr,#_Delay_ms_65536_7
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\lib\delay.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;n                         Allocated with name '_delay_ms_n_65536_11'
;i                         Allocated with name '_delay_ms_i_65536_12'
;j                         Allocated with name '_delay_ms_j_65536_12'
;------------------------------------------------------------
;	.\lib\delay.c:22: void delay_ms(unsigned int n)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_n_65536_11
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\lib\delay.c:25: for(i=0;i<n;i++)
	mov	dptr,#_delay_ms_n_65536_11
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	.\lib\delay.c:26: for(j=0;j<357;j++); 
	mov	r2,#0x65
	mov	r3,#0x01
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	.\lib\delay.c:25: for(i=0;i<n;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	.\lib\delay.c:27: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
