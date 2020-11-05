;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module dht11
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __Delay10us
	.globl _Delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _DHT11_Measure
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DHT11_Measure_sloc0_1_0:
	.ds 3
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
_DHT11_Measure_dat_65536_5:
	.ds 3
_DHT11_Measure_buf_65536_6:
	.ds 5
_DHT11_Measure_errCode_65536_6:
	.ds 1
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
;Allocation info for local variables in function '_Delay10us'
;------------------------------------------------------------
;i                         Allocated with name '__Delay10us_i_65536_4'
;------------------------------------------------------------
;	.\driver\dht11.c:3: void _Delay10us() // @16MHz, 软件延时，由 STC-ISP 工具生成
;	-----------------------------------------
;	 function _Delay10us
;	-----------------------------------------
__Delay10us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\driver\dht11.c:6: _nop_();
	nop
;	.\driver\dht11.c:7: _nop_();
	nop
;	.\driver\dht11.c:9: while (--i)
	mov	r7,#0x25
00101$:
	djnz	r7,00101$
;	.\driver\dht11.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT11_Measure'
;------------------------------------------------------------
;sloc0                     Allocated with name '_DHT11_Measure_sloc0_1_0'
;dat                       Allocated with name '_DHT11_Measure_dat_65536_5'
;buf                       Allocated with name '_DHT11_Measure_buf_65536_6'
;i                         Allocated with name '_DHT11_Measure_i_65536_6'
;j                         Allocated with name '_DHT11_Measure_j_65536_6'
;errCode                   Allocated with name '_DHT11_Measure_errCode_65536_6'
;------------------------------------------------------------
;	.\driver\dht11.c:13: uint8_t DHT11_Measure(DHT11_Data *dat)
;	-----------------------------------------
;	 function DHT11_Measure
;	-----------------------------------------
_DHT11_Measure:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DHT11_Measure_dat_65536_5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\driver\dht11.c:16: uint8_t i, j, errCode = DHT11_DONE;
	mov	dptr,#_DHT11_Measure_errCode_65536_6
	clr	a
	movx	@dptr,a
;	.\driver\dht11.c:18: DATA_WRITE(0);
;	assignBit
	clr	_P1_1
;	.\driver\dht11.c:19: _Delay(20); // 开始信号 20 ms
	mov	dptr,#0x0014
	lcall	_Delay
;	.\driver\dht11.c:20: DATA_WRITE(1);
;	assignBit
	setb	_P1_1
;	.\driver\dht11.c:23: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:24: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:25: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:26: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:27: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:28: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:30: if (DATA_READ() == 0)
	jnb	_P1_1,00173$
	ljmp	00123$
00173$:
;	.\driver\dht11.c:32: while (DATA_READ() == 0) // 等待 DHT11 拉高
00101$:
	jnb	_P1_1,00101$
;	.\driver\dht11.c:35: while (DATA_READ() == 1)
00104$:
	jb	_P1_1,00104$
;	.\driver\dht11.c:39: while (i < 5)
	mov	r7,#0x00
00116$:
	cjne	r7,#0x05,00176$
00176$:
	jnc	00118$
;	.\driver\dht11.c:42: while (j < 8)
	mov	ar6,r7
	mov	r5,#0x00
00113$:
	cjne	r5,#0x08,00178$
00178$:
	jnc	00115$
;	.\driver\dht11.c:44: while (DATA_READ() == 0)
00107$:
	jnb	_P1_1,00107$
;	.\driver\dht11.c:47: _Delay10us();
	push	ar7
	push	ar6
	push	ar5
	lcall	__Delay10us
;	.\driver\dht11.c:48: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:49: _Delay10us();
	lcall	__Delay10us
	pop	ar5
	pop	ar6
	pop	ar7
;	.\driver\dht11.c:51: buf[i] <<= 1;
	mov	a,r6
	add	a,#_DHT11_Measure_buf_65536_6
	mov	r3,a
	clr	a
	addc	a,#(_DHT11_Measure_buf_65536_6 >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	.\driver\dht11.c:52: buf[i] |= DATA_READ();
	mov	c,_P1_1
	clr	a
	rlc	a
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	.\driver\dht11.c:53: while (DATA_READ() == 1)
00110$:
	jb	_P1_1,00110$
;	.\driver\dht11.c:55: j++;
	inc	r5
	sjmp	00113$
00115$:
;	.\driver\dht11.c:57: i++;
	inc	r7
	sjmp	00116$
00118$:
;	.\driver\dht11.c:60: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:61: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:62: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:63: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:64: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:65: _Delay10us();
	lcall	__Delay10us
;	.\driver\dht11.c:67: if (buf[4] == buf[0] + buf[1] + buf[2] + buf[3])
	mov	dptr,#(_DHT11_Measure_buf_65536_6 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_DHT11_Measure_buf_65536_6
	movx	a,@dptr
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#(_DHT11_Measure_buf_65536_6 + 0x0001)
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_DHT11_Measure_buf_65536_6 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r2
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_DHT11_Measure_buf_65536_6 + 0x0003)
	movx	a,@dptr
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r7
	cjne	a,ar6,00120$
	mov	a,r3
	cjne	a,ar5,00120$
;	.\driver\dht11.c:69: dat->temperature = buf[2];
	mov	dptr,#_DHT11_Measure_dat_65536_5
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r5
	mov	_DHT11_Measure_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_DHT11_Measure_sloc0_1_0 + 1),a
	mov	(_DHT11_Measure_sloc0_1_0 + 2),r7
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	___schar2fs
	mov	r0,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_DHT11_Measure_sloc0_1_0
	mov	dph,(_DHT11_Measure_sloc0_1_0 + 1)
	mov	b,(_DHT11_Measure_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	.\driver\dht11.c:70: dat->humidity = buf[0];
	mov	dptr,#_DHT11_Measure_buf_65536_6
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	sjmp	00124$
00120$:
;	.\driver\dht11.c:74: errCode = DHT11_VERIFY_ERR;
	mov	dptr,#_DHT11_Measure_errCode_65536_6
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00124$
00123$:
;	.\driver\dht11.c:79: errCode = DHT11_CONNECT_ERR;
	mov	dptr,#_DHT11_Measure_errCode_65536_6
	mov	a,#0x01
	movx	@dptr,a
00124$:
;	.\driver\dht11.c:82: DATA_WRITE(1);
;	assignBit
	setb	_P1_1
;	.\driver\dht11.c:83: _Delay(1);
	mov	dptr,#0x0001
	lcall	_Delay
;	.\driver\dht11.c:85: return errCode;
	mov	dptr,#_DHT11_Measure_errCode_65536_6
	movx	a,@dptr
;	.\driver\dht11.c:86: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
