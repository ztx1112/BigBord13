;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _GPIO_Updata
	.globl _Get_IOstate
	.globl _Timer4Init
	.globl _IapProgram
	.globl _IapRead
	.globl _IapErase
	.globl _IapIdle
	.globl __IAP_ADDR_TRIG
	.globl _Uart2SendStr
	.globl _Uart2Send
	.globl _Uart2Read
	.globl _Uart2Init
	.globl _Uart2Isr
	.globl _Uart1SendStr
	.globl _Uart1Send
	.globl _Uart1Read
	.globl _Uart1Init
	.globl _Uart1Isr
	.globl _PCA_Stop
	.globl _PCA_Run
	.globl _PCA_Init
	.globl _PCA_Isr
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CR
	.globl _CF
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EADC
	.globl _ELVD
	.globl _EA
	.globl _P77
	.globl _P76
	.globl _P75
	.globl _P74
	.globl _P73
	.globl _P72
	.globl _P71
	.globl _P70
	.globl _P67
	.globl _P66
	.globl _P65
	.globl _P64
	.globl _P63
	.globl _P62
	.globl _P61
	.globl _P60
	.globl _P57
	.globl _P56
	.globl _P55
	.globl _P54
	.globl _P53
	.globl _P52
	.globl _P51
	.globl _P50
	.globl _P47
	.globl _P46
	.globl _P45
	.globl _P44
	.globl _P43
	.globl _P42
	.globl _P41
	.globl _P40
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _PWMCR
	.globl _PWMFDCR
	.globl _PWMIF
	.globl _PWMCFG
	.globl _PCA_PWM3
	.globl _PCA_PWM2
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _ISP_CONTR
	.globl _ISP_TRIG
	.globl _ISP_CMD
	.globl _ISP_ADDRL
	.globl _ISP_ADDRH
	.globl _ISP_DATA
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _ADCCFG
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _SADEN
	.globl _SADDR
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _SBUF
	.globl _SCON
	.globl _WDT_CONTR
	.globl _WKTCH
	.globl _WKTCL
	.globl _TL2
	.globl _TH2
	.globl _TL3
	.globl _TH3
	.globl _TL4
	.globl _TH4
	.globl _T2L
	.globl _T2H
	.globl _T3L
	.globl _T3H
	.globl _T4L
	.globl _T4H
	.globl _T4T3M
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _AUXINTIF
	.globl _INTCLKO
	.globl _IP2H
	.globl _IPH
	.globl _IP2
	.globl _IP
	.globl _IE2
	.globl _IE
	.globl _RSTCFG
	.globl _VOCTRL
	.globl _P_SW2
	.globl _P_SW1
	.globl _BUS_SPEED
	.globl _AUXR2
	.globl _AUXR
	.globl _PCON
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P7
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _DPH1
	.globl _DPL1
	.globl _DPS
	.globl _TA
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _PSW
	.globl _B
	.globl _ACC
	.globl _PCA_state
	.globl _value_count
	.globl _value_hz
	.globl _Get_IOstate_PARM_2
	.globl _GPIO_State
	.globl _GPIO_Oldstate
	.globl _IapProgram_PARM_2
	.globl _value_max
	.globl _value
	.globl _uart4
	.globl _uart3
	.globl _uart2
	.globl _uart1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_PSW	=	0x00d0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_TA	=	0x00ae
_DPS	=	0x00e3
_DPL1	=	0x00e4
_DPH1	=	0x00e5
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_P4	=	0x00c0
_P5	=	0x00c8
_P6	=	0x00e8
_P7	=	0x00f8
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_PCON	=	0x0087
_AUXR	=	0x008e
_AUXR2	=	0x0097
_BUS_SPEED	=	0x00a1
_P_SW1	=	0x00a2
_P_SW2	=	0x00ba
_VOCTRL	=	0x00bb
_RSTCFG	=	0x00ff
_IE	=	0x00a8
_IE2	=	0x00af
_IP	=	0x00b8
_IP2	=	0x00b5
_IPH	=	0x00b7
_IP2H	=	0x00b6
_INTCLKO	=	0x008f
_AUXINTIF	=	0x00ef
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T4T3M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T2H	=	0x00d6
_T2L	=	0x00d7
_TH4	=	0x00d2
_TL4	=	0x00d3
_TH3	=	0x00d4
_TL3	=	0x00d5
_TH2	=	0x00d6
_TL2	=	0x00d7
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WDT_CONTR	=	0x00c1
_SCON	=	0x0098
_SBUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_ADCCFG	=	0x00de
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_ISP_DATA	=	0x00c2
_ISP_ADDRH	=	0x00c3
_ISP_ADDRL	=	0x00c4
_ISP_CMD	=	0x00c5
_ISP_TRIG	=	0x00c6
_ISP_CONTR	=	0x00c7
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_PCA_PWM2	=	0x00f4
_PCA_PWM3	=	0x00f5
_PWMCFG	=	0x00f1
_PWMIF	=	0x00f6
_PWMFDCR	=	0x00f7
_PWMCR	=	0x00fe
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_P40	=	0x00c0
_P41	=	0x00c1
_P42	=	0x00c2
_P43	=	0x00c3
_P44	=	0x00c4
_P45	=	0x00c5
_P46	=	0x00c6
_P47	=	0x00c7
_P50	=	0x00c8
_P51	=	0x00c9
_P52	=	0x00ca
_P53	=	0x00cb
_P54	=	0x00cc
_P55	=	0x00cd
_P56	=	0x00ce
_P57	=	0x00cf
_P60	=	0x00e8
_P61	=	0x00e9
_P62	=	0x00ea
_P63	=	0x00eb
_P64	=	0x00ec
_P65	=	0x00ed
_P66	=	0x00ee
_P67	=	0x00ef
_P70	=	0x00f8
_P71	=	0x00f9
_P72	=	0x00fa
_P73	=	0x00fb
_P74	=	0x00fc
_P75	=	0x00fd
_P76	=	0x00fe
_P77	=	0x00ff
_EA	=	0x00af
_ELVD	=	0x00ae
_EADC	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_CF	=	0x00df
_CR	=	0x00de
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_uart1::
	.ds 19
_uart2::
	.ds 19
_uart3::
	.ds 19
_uart4::
	.ds 19
_value::
	.ds 2
_value_max::
	.ds 2
_Uart1Send_dat_65536_30:
	.ds 1
_Uart1SendStr_p_65536_32:
	.ds 3
_Uart2Send_dat_65536_41:
	.ds 1
_Uart2SendStr_p_65536_43:
	.ds 3
__IAP_ADDR_TRIG_address_65536_46:
	.ds 2
_IapErase_address_65536_49:
	.ds 2
_IapRead_address_65536_51:
	.ds 2
_IapRead_dat_65536_52:
	.ds 1
_IapProgram_PARM_2:
	.ds 1
_IapProgram_address_65536_53:
	.ds 2
_GPIO_Oldstate::
	.ds 8
_GPIO_State::
	.ds 8
_Get_IOstate_PARM_2:
	.ds 1
_Get_IOstate_channel_65536_57:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_value_hz::
	.ds 2
_value_count::
	.ds 2
_PCA_state::
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Uart1Isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_PCA_Isr
	.ds	5
	ljmp	_Uart2Isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Isr'
;------------------------------------------------------------
;	./lib/PCA.h:15: void PCA_Isr() __interrupt(PCA_VECTOR)
;	-----------------------------------------
;	 function PCA_Isr
;	-----------------------------------------
_PCA_Isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./lib/PCA.h:17: CCAP0L = value;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_CCAP0L,r6
;	./lib/PCA.h:18: CCAP0H = value >> 8;
	mov	_CCAP0H,r7
;	./lib/PCA.h:19: value += HZ(value_hz);
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__divslong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	push	ar7
	push	ar6
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_value
	mov	a,r2
	add	a,r6
	movx	@dptr,a
	mov	a,r3
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:20: if (CCF0 != 0)
	jnb	_CCF0,00102$
;	./lib/PCA.h:22: value_count += 1;
	mov	dptr,#_value_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_value_count
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	./lib/PCA.h:24: if(value_count>=value_max)
	mov	dptr,#_value_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_value_max
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00104$
;	./lib/PCA.h:26: PCA_Stop();
	lcall	_PCA_Stop
;	./lib/PCA.h:27: value_count=0;
	mov	dptr,#_value_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:28: PCA_state=1;
	mov	dptr,#_PCA_state
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00104$:
;	./lib/PCA.h:30: CCF0 = 0;
;	assignBit
	clr	_CCF0
;	./lib/PCA.h:31: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Init'
;------------------------------------------------------------
;	./lib/PCA.h:33: void PCA_Init()
;	-----------------------------------------
;	 function PCA_Init
;	-----------------------------------------
_PCA_Init:
;	./lib/PCA.h:35: CCON = 0x00;
	mov	_CCON,#0x00
;	./lib/PCA.h:36: CMOD = 0x08; //PCA时钟为系统时钟
	mov	_CMOD,#0x08
;	./lib/PCA.h:37: CL = 0x00;
	mov	_CL,#0x00
;	./lib/PCA.h:38: CH = 0x00;
	mov	_CH,#0x00
;	./lib/PCA.h:39: CCAPM0 = 0x4d; //PCA模块0为16位定时器模式并使能脉冲输出
	mov	_CCAPM0,#0x4d
;	./lib/PCA.h:40: value = HZ(value_hz);
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divslong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
;	./lib/PCA.h:41: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:42: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:43: value += HZ(value_hz);
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:44: EA = 1;
;	assignBit
	setb	_EA
;	./lib/PCA.h:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Run'
;------------------------------------------------------------
;	./lib/PCA.h:47: void PCA_Run()
;	-----------------------------------------
;	 function PCA_Run
;	-----------------------------------------
_PCA_Run:
;	./lib/PCA.h:49: CCAPM0 = 0x4d; //PCA模块0为16位定时器模式并使能脉冲输出
	mov	_CCAPM0,#0x4d
;	./lib/PCA.h:50: value = HZ(value_hz);
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divslong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
;	./lib/PCA.h:51: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:52: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:53: value += HZ(value_hz);
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:54: CR=1;
;	assignBit
	setb	_CR
;	./lib/PCA.h:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Stop'
;------------------------------------------------------------
;	./lib/PCA.h:57: void PCA_Stop()
;	-----------------------------------------
;	 function PCA_Stop
;	-----------------------------------------
_PCA_Stop:
;	./lib/PCA.h:59: CCAPM0 = 0x00; 
	mov	_CCAPM0,#0x00
;	./lib/PCA.h:60: value = HZ(value_hz);
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divslong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:61: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:62: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:63: CR=0;
;	assignBit
	clr	_CR
;	./lib/PCA.h:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1Isr'
;------------------------------------------------------------
;	./lib/stc8uart.h:5: void Uart1Isr() __interrupt(UART1_VECTOR)
;	-----------------------------------------
;	 function Uart1Isr
;	-----------------------------------------
_Uart1Isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	./lib/stc8uart.h:7: if (TI)
;	./lib/stc8uart.h:9: TI = 0;
;	assignBit
	jbc	_TI,00115$
	sjmp	00102$
00115$:
;	./lib/stc8uart.h:10: uart1.busy = 0;
	mov	dptr,#_uart1
	clr	a
	movx	@dptr,a
00102$:
;	./lib/stc8uart.h:12: if (RI)
;	./lib/stc8uart.h:14: RI = 0;
;	assignBit
	jbc	_RI,00116$
	sjmp	00105$
00116$:
;	./lib/stc8uart.h:15: uart1.buffer[uart1.wptr++] = SBUF;
	mov	dptr,#(_uart1 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	a
	mov	r6,a
	mov	dptr,#(_uart1 + 0x0001)
	movx	@dptr,a
	mov	a,r7
	add	a,#(_uart1 + 0x0003)
	mov	dpl,a
	clr	a
	addc	a,#((_uart1 + 0x0003) >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	./lib/stc8uart.h:16: uart1.wptr &= 0x0f;
	anl	ar6,#0x0f
	mov	dptr,#(_uart1 + 0x0001)
	mov	a,r6
	movx	@dptr,a
00105$:
;	./lib/stc8uart.h:18: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1Init'
;------------------------------------------------------------
;	./lib/stc8uart.h:19: void Uart1Init()
;	-----------------------------------------
;	 function Uart1Init
;	-----------------------------------------
_Uart1Init:
;	./lib/stc8uart.h:21: SCON = 0x50;
	mov	_SCON,#0x50
;	./lib/stc8uart.h:22: TMOD = 0x00;
	mov	_TMOD,#0x00
;	./lib/stc8uart.h:23: TL1 = BRT;
	mov	_TL1,#0xcc
;	./lib/stc8uart.h:24: TH1 = BRT >> 8;
	mov	_TH1,#0xff
;	./lib/stc8uart.h:25: TR1 = 1;
;	assignBit
	setb	_TR1
;	./lib/stc8uart.h:26: AUXR |= 0x40;
	orl	_AUXR,#0x40
;	./lib/stc8uart.h:27: uart1.busy = 0;
	mov	dptr,#_uart1
	clr	a
	movx	@dptr,a
;	./lib/stc8uart.h:28: uart1.wptr = 0;
	mov	dptr,#(_uart1 + 0x0001)
	movx	@dptr,a
;	./lib/stc8uart.h:29: uart1.rptr = 0;
	mov	dptr,#(_uart1 + 0x0002)
	movx	@dptr,a
;	./lib/stc8uart.h:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1Read'
;------------------------------------------------------------
;tmp                       Allocated with name '_Uart1Read_tmp_131072_29'
;------------------------------------------------------------
;	./lib/stc8uart.h:32: char Uart1Read()
;	-----------------------------------------
;	 function Uart1Read
;	-----------------------------------------
_Uart1Read:
;	./lib/stc8uart.h:34: if (uart1.rptr != uart1.wptr)
	mov	dptr,#(_uart1 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uart1 + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00109$
	ret
00109$:
;	./lib/stc8uart.h:36: char tmp = uart1.buffer[uart1.rptr++];
	mov	a,r7
	inc	a
	mov	r6,a
	mov	dptr,#(_uart1 + 0x0002)
	movx	@dptr,a
	mov	a,r7
	add	a,#(_uart1 + 0x0003)
	mov	dpl,a
	clr	a
	addc	a,#((_uart1 + 0x0003) >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	./lib/stc8uart.h:37: uart1.rptr &= 0x0f;
	anl	ar6,#0x0f
	mov	dptr,#(_uart1 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	./lib/stc8uart.h:38: return tmp;
	mov	dpl,r7
;	./lib/stc8uart.h:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1Send'
;------------------------------------------------------------
;dat                       Allocated with name '_Uart1Send_dat_65536_30'
;------------------------------------------------------------
;	./lib/stc8uart.h:42: void Uart1Send(char dat)
;	-----------------------------------------
;	 function Uart1Send
;	-----------------------------------------
_Uart1Send:
	mov	a,dpl
	mov	dptr,#_Uart1Send_dat_65536_30
	movx	@dptr,a
;	./lib/stc8uart.h:44: while (uart1.busy)
00101$:
	mov	dptr,#_uart1
	movx	a,@dptr
	jnz	00101$
;	./lib/stc8uart.h:46: uart1.busy = 1;
	mov	dptr,#_uart1
	mov	a,#0x01
	movx	@dptr,a
;	./lib/stc8uart.h:47: SBUF = dat;
	mov	dptr,#_Uart1Send_dat_65536_30
	movx	a,@dptr
	mov	_SBUF,a
;	./lib/stc8uart.h:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1SendStr'
;------------------------------------------------------------
;p                         Allocated with name '_Uart1SendStr_p_65536_32'
;------------------------------------------------------------
;	./lib/stc8uart.h:50: void Uart1SendStr(char *p)
;	-----------------------------------------
;	 function Uart1SendStr
;	-----------------------------------------
_Uart1SendStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Uart1SendStr_p_65536_32
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:52: while (*p)
	mov	dptr,#_Uart1SendStr_p_65536_32
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	./lib/stc8uart.h:54: Uart1Send(*p++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_Uart1SendStr_p_65536_32
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_Uart1Send
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00108$:
	mov	dptr,#_Uart1SendStr_p_65536_32
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2Isr'
;------------------------------------------------------------
;	./lib/stc8uart.h:58: void Uart2Isr() __interrupt(UART2_VECTOR)
;	-----------------------------------------
;	 function Uart2Isr
;	-----------------------------------------
_Uart2Isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	./lib/stc8uart.h:60: if (S2CON & S2TI)
	mov	a,_S2CON
	jnb	acc.1,00102$
;	./lib/stc8uart.h:62: S2CON &= ~S2TI;
	anl	_S2CON,#0xfd
;	./lib/stc8uart.h:63: uart2.busy = 0;
	mov	dptr,#_uart2
	clr	a
	movx	@dptr,a
00102$:
;	./lib/stc8uart.h:65: if (S2CON & S2RI)
	mov	a,_S2CON
	jnb	acc.0,00105$
;	./lib/stc8uart.h:67: S2CON &= ~S2RI;
	anl	_S2CON,#0xfe
;	./lib/stc8uart.h:68: uart2.buffer[uart2.wptr++] = S2BUF;
	mov	dptr,#(_uart2 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	a
	mov	r6,a
	mov	dptr,#(_uart2 + 0x0001)
	movx	@dptr,a
	mov	a,r7
	add	a,#(_uart2 + 0x0003)
	mov	dpl,a
	clr	a
	addc	a,#((_uart2 + 0x0003) >> 8)
	mov	dph,a
	mov	a,_S2BUF
	movx	@dptr,a
;	./lib/stc8uart.h:69: uart2.wptr &= 0x0f;
	anl	ar6,#0x0f
	mov	dptr,#(_uart2 + 0x0001)
	mov	a,r6
	movx	@dptr,a
00105$:
;	./lib/stc8uart.h:71: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2Init'
;------------------------------------------------------------
;	./lib/stc8uart.h:73: void Uart2Init()
;	-----------------------------------------
;	 function Uart2Init
;	-----------------------------------------
_Uart2Init:
;	./lib/stc8uart.h:75: S2CON = 0x10;
	mov	_S2CON,#0x10
;	./lib/stc8uart.h:76: T2L = BRT;
	mov	_T2L,#0xcc
;	./lib/stc8uart.h:77: T2H = BRT >> 8;
	mov	_T2H,#0xff
;	./lib/stc8uart.h:78: AUXR |= 0x14;
	orl	_AUXR,#0x14
;	./lib/stc8uart.h:79: uart2.busy = 0;
	mov	dptr,#_uart2
	clr	a
	movx	@dptr,a
;	./lib/stc8uart.h:80: uart2.wptr = 0;
	mov	dptr,#(_uart2 + 0x0001)
	movx	@dptr,a
;	./lib/stc8uart.h:81: uart2.rptr = 0;
	mov	dptr,#(_uart2 + 0x0002)
	movx	@dptr,a
;	./lib/stc8uart.h:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2Read'
;------------------------------------------------------------
;tmp                       Allocated with name '_Uart2Read_tmp_131072_40'
;------------------------------------------------------------
;	./lib/stc8uart.h:84: char Uart2Read()
;	-----------------------------------------
;	 function Uart2Read
;	-----------------------------------------
_Uart2Read:
;	./lib/stc8uart.h:86: if (uart2.rptr != uart2.wptr)
	mov	dptr,#(_uart2 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uart2 + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00109$
	sjmp	00102$
00109$:
;	./lib/stc8uart.h:88: char tmp = uart2.buffer[uart2.rptr++];
	mov	a,r7
	inc	a
	mov	r6,a
	mov	dptr,#(_uart2 + 0x0002)
	movx	@dptr,a
	mov	a,r7
	add	a,#(_uart2 + 0x0003)
	mov	dpl,a
	clr	a
	addc	a,#((_uart2 + 0x0003) >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	./lib/stc8uart.h:89: uart2.rptr &= 0x0f;
	anl	ar6,#0x0f
	mov	dptr,#(_uart2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	./lib/stc8uart.h:90: return tmp;
	mov	dpl,r7
	ret
00102$:
;	./lib/stc8uart.h:92: return 0;
	mov	dpl,#0x00
;	./lib/stc8uart.h:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2Send'
;------------------------------------------------------------
;dat                       Allocated with name '_Uart2Send_dat_65536_41'
;------------------------------------------------------------
;	./lib/stc8uart.h:95: void Uart2Send(char dat)
;	-----------------------------------------
;	 function Uart2Send
;	-----------------------------------------
_Uart2Send:
	mov	a,dpl
	mov	dptr,#_Uart2Send_dat_65536_41
	movx	@dptr,a
;	./lib/stc8uart.h:97: while (uart2.busy)
00101$:
	mov	dptr,#_uart2
	movx	a,@dptr
	jnz	00101$
;	./lib/stc8uart.h:99: uart2.busy = 1;
	mov	dptr,#_uart2
	mov	a,#0x01
	movx	@dptr,a
;	./lib/stc8uart.h:100: S2BUF = dat;
	mov	dptr,#_Uart2Send_dat_65536_41
	movx	a,@dptr
	mov	_S2BUF,a
;	./lib/stc8uart.h:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2SendStr'
;------------------------------------------------------------
;p                         Allocated with name '_Uart2SendStr_p_65536_43'
;------------------------------------------------------------
;	./lib/stc8uart.h:103: void Uart2SendStr(char *p)
;	-----------------------------------------
;	 function Uart2SendStr
;	-----------------------------------------
_Uart2SendStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Uart2SendStr_p_65536_43
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:105: while (*p)
	mov	dptr,#_Uart2SendStr_p_65536_43
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	./lib/stc8uart.h:107: Uart2Send(*p++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_Uart2SendStr_p_65536_43
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_Uart2Send
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00108$:
	mov	dptr,#_Uart2SendStr_p_65536_43
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_IAP_ADDR_TRIG'
;------------------------------------------------------------
;address                   Allocated with name '__IAP_ADDR_TRIG_address_65536_46'
;------------------------------------------------------------
;	./lib/EEPROM.h:17: void _IAP_ADDR_TRIG(unsigned int address)
;	-----------------------------------------
;	 function _IAP_ADDR_TRIG
;	-----------------------------------------
__IAP_ADDR_TRIG:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__IAP_ADDR_TRIG_address_65536_46
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:19: IAP_ADDRL = address;      //设置 IAP 低地址
	mov	dptr,#__IAP_ADDR_TRIG_address_65536_46
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_IAP_ADDRL,r6
;	./lib/EEPROM.h:20: IAP_ADDRH = address >> 8; //设置 IAP 高地址
	mov	_IAP_ADDRH,r7
;	./lib/EEPROM.h:21: IAP_TRIG = 0x5a;          //写触发命令(0x5a)
	mov	_IAP_TRIG,#0x5a
;	./lib/EEPROM.h:22: IAP_TRIG = 0xa5;          //写触发命令(0xa5)
	mov	_IAP_TRIG,#0xa5
;	./lib/EEPROM.h:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IapIdle'
;------------------------------------------------------------
;	./lib/EEPROM.h:25: void IapIdle()
;	-----------------------------------------
;	 function IapIdle
;	-----------------------------------------
_IapIdle:
;	./lib/EEPROM.h:27: IAP_CONTR=0;      //关闭IAP功能
	mov	_IAP_CONTR,#0x00
;	./lib/EEPROM.h:28: IAP_CMD = 0;      //清除命令寄存器
	mov	_IAP_CMD,#0x00
;	./lib/EEPROM.h:29: IAP_TRIG = 0;     //清除触发寄存器
	mov	_IAP_TRIG,#0x00
;	./lib/EEPROM.h:30: IAP_ADDRH = 0x80; //将地址设置到非 IAP 区域
	mov	_IAP_ADDRH,#0x80
;	./lib/EEPROM.h:31: IAP_ADDRL = 0;
	mov	_IAP_ADDRL,#0x00
;	./lib/EEPROM.h:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IapErase'
;------------------------------------------------------------
;address                   Allocated with name '_IapErase_address_65536_49'
;------------------------------------------------------------
;	./lib/EEPROM.h:34: void IapErase(unsigned int address)
;	-----------------------------------------
;	 function IapErase
;	-----------------------------------------
_IapErase:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapErase_address_65536_49
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:36: EA = 0;                             //禁止中断
;	assignBit
	clr	_EA
;	./lib/EEPROM.h:37: IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP并设置等待时间
	mov	_IAP_CONTR,#0x81
;	./lib/EEPROM.h:38: IAP_CMD = 3;                        //设置 IAP 擦除命令
	mov	_IAP_CMD,#0x03
;	./lib/EEPROM.h:39: _IAP_ADDR_TRIG(address);
	mov	dptr,#_IapErase_address_65536_49
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__IAP_ADDR_TRIG
;	./lib/EEPROM.h:40: _nop_();                            //
	nop
;	./lib/EEPROM.h:41: IapIdle();                          //关闭 IAP 功能
;	./lib/EEPROM.h:42: }
	ljmp	_IapIdle
;------------------------------------------------------------
;Allocation info for local variables in function 'IapRead'
;------------------------------------------------------------
;address                   Allocated with name '_IapRead_address_65536_51'
;dat                       Allocated with name '_IapRead_dat_65536_52'
;------------------------------------------------------------
;	./lib/EEPROM.h:44: char IapRead(int address)
;	-----------------------------------------
;	 function IapRead
;	-----------------------------------------
_IapRead:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapRead_address_65536_51
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:47: IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP
	mov	_IAP_CONTR,#0x81
;	./lib/EEPROM.h:48: IAP_CMD = 1;           //设置 IAP 读命令
	mov	_IAP_CMD,#0x01
;	./lib/EEPROM.h:49: _IAP_ADDR_TRIG(address);
	mov	dptr,#_IapRead_address_65536_51
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__IAP_ADDR_TRIG
;	./lib/EEPROM.h:50: _nop_();
	nop
;	./lib/EEPROM.h:51: dat = IAP_DATA; //读 IAP 数据
	mov	dptr,#_IapRead_dat_65536_52
	mov	a,_IAP_DATA
	movx	@dptr,a
;	./lib/EEPROM.h:52: IapIdle();      //关闭 IAP 功能
	lcall	_IapIdle
;	./lib/EEPROM.h:53: return dat;
	mov	dptr,#_IapRead_dat_65536_52
	movx	a,@dptr
;	./lib/EEPROM.h:54: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IapProgram'
;------------------------------------------------------------
;dat                       Allocated with name '_IapProgram_PARM_2'
;address                   Allocated with name '_IapProgram_address_65536_53'
;------------------------------------------------------------
;	./lib/EEPROM.h:56: void IapProgram(int address, char dat)
;	-----------------------------------------
;	 function IapProgram
;	-----------------------------------------
_IapProgram:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapProgram_address_65536_53
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:58: IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP
	mov	_IAP_CONTR,#0x81
;	./lib/EEPROM.h:59: IAP_CMD = 2;           //设置 IAP 写命令
	mov	_IAP_CMD,#0x02
;	./lib/EEPROM.h:60: IAP_DATA = dat;        //写 IAP 数据
	mov	dptr,#_IapProgram_PARM_2
	movx	a,@dptr
	mov	_IAP_DATA,a
;	./lib/EEPROM.h:61: _IAP_ADDR_TRIG(address);
	mov	dptr,#_IapProgram_address_65536_53
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__IAP_ADDR_TRIG
;	./lib/EEPROM.h:62: _nop_();
	nop
;	./lib/EEPROM.h:63: IapIdle(); //关闭 IAP 功能
;	./lib/EEPROM.h:64: }
	ljmp	_IapIdle
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer4Init'
;------------------------------------------------------------
;	./lib/stc8timer.h:11: void Timer4Init(void) //1毫秒@24.000MHz
;	-----------------------------------------
;	 function Timer4Init
;	-----------------------------------------
_Timer4Init:
;	./lib/stc8timer.h:13: T4T3M |= 0x20; //定时器时钟1T模式
	orl	_T4T3M,#0x20
;	./lib/stc8timer.h:14: T4L = 0x40;    //设置定时初值
	mov	_T4L,#0x40
;	./lib/stc8timer.h:15: T4H = 0xA2;    //设置定时初值
	mov	_T4H,#0xa2
;	./lib/stc8timer.h:16: T4T3M |= 0x80; //定时器4开始计时
	orl	_T4T3M,#0x80
;	./lib/stc8timer.h:17: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_IOstate'
;------------------------------------------------------------
;port                      Allocated with name '_Get_IOstate_PARM_2'
;channel                   Allocated with name '_Get_IOstate_channel_65536_57'
;state                     Allocated with name '_Get_IOstate_state_65536_58'
;oldstate                  Allocated with name '_Get_IOstate_oldstate_65536_58'
;------------------------------------------------------------
;	./lib/gpio.h:14: char Get_IOstate(char channel,char port)
;	-----------------------------------------
;	 function Get_IOstate
;	-----------------------------------------
_Get_IOstate:
	mov	a,dpl
	mov	dptr,#_Get_IOstate_channel_65536_57
	movx	@dptr,a
;	./lib/gpio.h:17: oldstate = GPIO_Oldstate[channel]&(1<<port);
	movx	a,@dptr
	mov	r7,a
	add	a,#_GPIO_Oldstate
	mov	dpl,a
	clr	a
	addc	a,#(_GPIO_Oldstate >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_Get_IOstate_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	mov	r5,a
	anl	ar6,a
;	./lib/gpio.h:18: state=GPIO_State[channel]&(1<<port);
	mov	a,r7
	add	a,#_GPIO_State
	mov	dpl,a
	clr	a
	addc	a,#(_GPIO_State >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	anl	ar7,a
;	./lib/gpio.h:19: if(oldstate==state==1)
	mov	a,r6
	cjne	a,ar7,00130$
	mov	a,#0x01
	sjmp	00131$
00130$:
	clr	a
00131$:
	mov	r5,a
	cjne	r5,#0x01,00102$
;	./lib/gpio.h:21: return IN_STATE_OFF;
	mov	dpl,#0x10
	ret
00102$:
;	./lib/gpio.h:23: if(oldstate==state==0)
	mov	a,r5
	jnz	00104$
;	./lib/gpio.h:25: return IN_STATE_ON;
	mov	dpl,#0x11
	ret
00104$:
;	./lib/gpio.h:27: if(oldstate>state)
	mov	ar5,r6
	mov	ar4,r7
	clr	c
	mov	a,r4
	subb	a,r5
	jnc	00106$
;	./lib/gpio.h:29: return IN_STATE_RISING;
	mov	dpl,#0x12
	ret
00106$:
;	./lib/gpio.h:31: if(oldstate<state)
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00109$
;	./lib/gpio.h:33: return IN_STATE_FALLING;
	mov	dpl,#0x13
00109$:
;	./lib/gpio.h:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Updata'
;------------------------------------------------------------
;	./lib/gpio.h:37: void GPIO_Updata()
;	-----------------------------------------
;	 function GPIO_Updata
;	-----------------------------------------
_GPIO_Updata:
;	./lib/gpio.h:39: GPIO_Oldstate[0] = GPIO_State[0];
	mov	dptr,#_GPIO_State
	movx	a,@dptr
	mov	dptr,#_GPIO_Oldstate
	movx	@dptr,a
;	./lib/gpio.h:40: GPIO_Oldstate[1] = GPIO_State[1];
	mov	dptr,#(_GPIO_State + 0x0001)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0001)
	movx	@dptr,a
;	./lib/gpio.h:41: GPIO_Oldstate[2] = GPIO_State[2];
	mov	dptr,#(_GPIO_State + 0x0002)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0002)
	movx	@dptr,a
;	./lib/gpio.h:42: GPIO_Oldstate[3] = GPIO_State[3];
	mov	dptr,#(_GPIO_State + 0x0003)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0003)
	movx	@dptr,a
;	./lib/gpio.h:43: GPIO_Oldstate[4] = GPIO_State[4];
	mov	dptr,#(_GPIO_State + 0x0004)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0004)
	movx	@dptr,a
;	./lib/gpio.h:44: GPIO_Oldstate[5] = GPIO_State[5];
	mov	dptr,#(_GPIO_State + 0x0005)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0005)
	movx	@dptr,a
;	./lib/gpio.h:45: GPIO_Oldstate[6] = GPIO_State[6];
	mov	dptr,#(_GPIO_State + 0x0006)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0006)
	movx	@dptr,a
;	./lib/gpio.h:46: GPIO_Oldstate[7] = GPIO_State[7];
	mov	dptr,#(_GPIO_State + 0x0007)
	movx	a,@dptr
	mov	dptr,#(_GPIO_Oldstate + 0x0007)
	movx	@dptr,a
;	./lib/gpio.h:48: GPIO_State[0] = P0;
	mov	dptr,#_GPIO_State
	mov	a,_P0
	movx	@dptr,a
;	./lib/gpio.h:49: GPIO_State[1] = P1;
	mov	dptr,#(_GPIO_State + 0x0001)
	mov	a,_P1
	movx	@dptr,a
;	./lib/gpio.h:50: GPIO_State[2] = P2;
	mov	dptr,#(_GPIO_State + 0x0002)
	mov	a,_P2
	movx	@dptr,a
;	./lib/gpio.h:51: GPIO_State[3] = P3;
	mov	dptr,#(_GPIO_State + 0x0003)
	mov	a,_P3
	movx	@dptr,a
;	./lib/gpio.h:52: GPIO_State[4] = P4;
	mov	dptr,#(_GPIO_State + 0x0004)
	mov	a,_P4
	movx	@dptr,a
;	./lib/gpio.h:53: GPIO_State[5] = P5;
	mov	dptr,#(_GPIO_State + 0x0005)
	mov	a,_P5
	movx	@dptr,a
;	./lib/gpio.h:54: GPIO_State[6] = P6;
	mov	dptr,#(_GPIO_State + 0x0006)
	mov	a,_P6
	movx	@dptr,a
;	./lib/gpio.h:55: GPIO_State[7] = P7;
	mov	dptr,#(_GPIO_State + 0x0007)
	mov	a,_P7
	movx	@dptr,a
;	./lib/gpio.h:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	.\src\main.c:14: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\src\main.c:16: P_SW1 = 0x30;
	mov	_P_SW1,#0x30
;	.\src\main.c:18: PCA_Init();
	lcall	_PCA_Init
;	.\src\main.c:19: Uart1Init();
	lcall	_Uart1Init
;	.\src\main.c:20: Timer4Init();
	lcall	_Timer4Init
;	.\src\main.c:22: EA = 1;
;	assignBit
	setb	_EA
;	.\src\main.c:24: while (1)
00104$:
;	.\src\main.c:26: if(AUXINTIF&T4IF)
	mov	a,_AUXINTIF
	jnb	acc.2,00104$
;	.\src\main.c:28: GPIO_Updata();
	lcall	_GPIO_Updata
;	.\src\main.c:31: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__value_hz:
	.byte #0x10, #0x27	; 10000
__xinit__value_count:
	.byte #0x00, #0x00	; 0
__xinit__PCA_state:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
