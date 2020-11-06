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
	.globl _UART_Handle
	.globl _Rom_Init
	.globl _UART_Read
	.globl _Run
	.globl _Tohome
	.globl _ROM_Write
	.globl _Delay1us
	.globl _Delay100us
	.globl _Delay100ms
	.globl _strstr
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
	.globl _uart2end
	.globl _uart1end
	.globl _uart2num
	.globl _uart1num
	.globl _uart2buff
	.globl _uart1buff
	.globl _Page
	.globl _Page_03
	.globl _Page_02
	.globl _Page_01
	.globl _Page_00
	.globl _tests
	.globl _Button_09
	.globl _Button_08
	.globl _Button_07
	.globl _Button_06
	.globl _Button_05
	.globl _Button_04
	.globl _Button_03
	.globl _Button_02
	.globl _Button_01
	.globl _Button_00
	.globl _PCA_state
	.globl _value_max
	.globl _value_count
	.globl _value_hz
	.globl _ii
	.globl _i
	.globl _buf
	.globl _IapProgram_PARM_2
	.globl _motor_circle
	.globl _value
	.globl _uart4
	.globl _uart3
	.globl _uart2
	.globl _uart1
	.globl _PCA_Stop
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
_motor_circle::
	.ds 1
_PCA_Run_v_65536_22:
	.ds 2
_Uart1Send_dat_65536_31:
	.ds 1
_Uart1SendStr_p_65536_33:
	.ds 3
_Uart2Send_dat_65536_42:
	.ds 1
_Uart2SendStr_p_65536_44:
	.ds 3
__IAP_ADDR_TRIG_address_65536_47:
	.ds 2
_IapErase_address_65536_50:
	.ds 2
_IapRead_address_65536_52:
	.ds 2
_IapRead_dat_65536_53:
	.ds 1
_IapProgram_PARM_2:
	.ds 1
_IapProgram_address_65536_54:
	.ds 2
_buf::
	.ds 1
_i::
	.ds 2
_ii::
	.ds 2
_ROM_Write_h_65536_86:
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
_value_max::
	.ds 2
_PCA_state::
	.ds 2
_Button_00::
	.ds 7
_Button_01::
	.ds 7
_Button_02::
	.ds 7
_Button_03::
	.ds 7
_Button_04::
	.ds 7
_Button_05::
	.ds 7
_Button_06::
	.ds 7
_Button_07::
	.ds 7
_Button_08::
	.ds 7
_Button_09::
	.ds 7
_tests::
	.ds 7
_Page_00::
	.ds 8
_Page_01::
	.ds 8
_Page_02::
	.ds 8
_Page_03::
	.ds 8
_Page::
	.ds 1
_uart1buff::
	.ds 20
_uart2buff::
	.ds 20
_uart1num::
	.ds 1
_uart2num::
	.ds 1
_uart1end::
	.ds 1
_uart2end::
	.ds 1
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
;	./lib/PCA.h:19: void PCA_Isr() __interrupt(PCA_VECTOR)
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
;	./lib/PCA.h:21: CCAP0L = value;
	mov	dptr,#_value
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_CCAP0L,r6
;	./lib/PCA.h:22: CCAP0H = value >> 8;
	mov	_CCAP0H,r7
;	./lib/PCA.h:23: value += HZ(value_hz);
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
;	./lib/PCA.h:24: if (CCF0 != 0)
	jnb	_CCF0,00102$
;	./lib/PCA.h:26: value_count += 1;
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
;	./lib/PCA.h:28: if (value_count >= value_max)
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
;	./lib/PCA.h:30: PCA_Stop();
	lcall	_PCA_Stop
;	./lib/PCA.h:31: value_count = 0;
	mov	dptr,#_value_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:32: PCA_state = 1;
	mov	dptr,#_PCA_state
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00104$:
;	./lib/PCA.h:34: CCF0 = 0;
;	assignBit
	clr	_CCF0
;	./lib/PCA.h:35: }
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
;	./lib/PCA.h:37: void PCA_Init()
;	-----------------------------------------
;	 function PCA_Init
;	-----------------------------------------
_PCA_Init:
;	./lib/PCA.h:39: CCON = 0x00;
	mov	_CCON,#0x00
;	./lib/PCA.h:40: CMOD = 0x08; //PCA时钟为系统时钟
	mov	_CMOD,#0x08
;	./lib/PCA.h:41: CL = 0x00;
	mov	_CL,#0x00
;	./lib/PCA.h:42: CH = 0x00;
	mov	_CH,#0x00
;	./lib/PCA.h:43: CCAPM0 = 0x4d; //PCA模块0为16位定时器模式并使能脉冲输出
	mov	_CCAPM0,#0x4d
;	./lib/PCA.h:44: value = HZ(value_hz);
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
;	./lib/PCA.h:45: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:46: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:47: value += HZ(value_hz);
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
;	./lib/PCA.h:48: EA = 1;
;	assignBit
	setb	_EA
;	./lib/PCA.h:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Run'
;------------------------------------------------------------
;v                         Allocated with name '_PCA_Run_v_65536_22'
;------------------------------------------------------------
;	./lib/PCA.h:51: void PCA_Run(unsigned int v)
;	-----------------------------------------
;	 function PCA_Run
;	-----------------------------------------
_PCA_Run:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_PCA_Run_v_65536_22
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:53: value_max = v;
	mov	dptr,#_PCA_Run_v_65536_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_value_max
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:54: value_count = 0;
	mov	dptr,#_value_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:55: PCA_state = 0;
	mov	dptr,#_PCA_state
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	./lib/PCA.h:56: CCAPM0 = 0x4d; //PCA模块0为16位定时器模式并使能脉冲输出
	mov	_CCAPM0,#0x4d
;	./lib/PCA.h:57: value = HZ(value_hz);
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
;	./lib/PCA.h:58: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:59: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:60: value += HZ(value_hz);
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
;	./lib/PCA.h:61: CR = 1;
;	assignBit
	setb	_CR
;	./lib/PCA.h:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Stop'
;------------------------------------------------------------
;	./lib/PCA.h:64: void PCA_Stop()
;	-----------------------------------------
;	 function PCA_Stop
;	-----------------------------------------
_PCA_Stop:
;	./lib/PCA.h:66: CCAPM0 = 0x00;
	mov	_CCAPM0,#0x00
;	./lib/PCA.h:67: value = HZ(value_hz);
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
;	./lib/PCA.h:68: CCAP0L = value;
	mov	_CCAP0L,r4
;	./lib/PCA.h:69: CCAP0H = value >> 8;
	mov	_CCAP0H,r5
;	./lib/PCA.h:70: CR = 0;
;	assignBit
	clr	_CR
;	./lib/PCA.h:71: }
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
;tmp                       Allocated with name '_Uart1Read_tmp_131072_30'
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
;dat                       Allocated with name '_Uart1Send_dat_65536_31'
;------------------------------------------------------------
;	./lib/stc8uart.h:42: void Uart1Send(char dat)
;	-----------------------------------------
;	 function Uart1Send
;	-----------------------------------------
_Uart1Send:
	mov	a,dpl
	mov	dptr,#_Uart1Send_dat_65536_31
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
	mov	dptr,#_Uart1Send_dat_65536_31
	movx	a,@dptr
	mov	_SBUF,a
;	./lib/stc8uart.h:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1SendStr'
;------------------------------------------------------------
;p                         Allocated with name '_Uart1SendStr_p_65536_33'
;------------------------------------------------------------
;	./lib/stc8uart.h:50: void Uart1SendStr(char *p)
;	-----------------------------------------
;	 function Uart1SendStr
;	-----------------------------------------
_Uart1SendStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Uart1SendStr_p_65536_33
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:52: while (*p)
	mov	dptr,#_Uart1SendStr_p_65536_33
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
	mov	dptr,#_Uart1SendStr_p_65536_33
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
	mov	dptr,#_Uart1SendStr_p_65536_33
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
;tmp                       Allocated with name '_Uart2Read_tmp_131072_41'
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
;dat                       Allocated with name '_Uart2Send_dat_65536_42'
;------------------------------------------------------------
;	./lib/stc8uart.h:95: void Uart2Send(char dat)
;	-----------------------------------------
;	 function Uart2Send
;	-----------------------------------------
_Uart2Send:
	mov	a,dpl
	mov	dptr,#_Uart2Send_dat_65536_42
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
	mov	dptr,#_Uart2Send_dat_65536_42
	movx	a,@dptr
	mov	_S2BUF,a
;	./lib/stc8uart.h:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart2SendStr'
;------------------------------------------------------------
;p                         Allocated with name '_Uart2SendStr_p_65536_44'
;------------------------------------------------------------
;	./lib/stc8uart.h:103: void Uart2SendStr(char *p)
;	-----------------------------------------
;	 function Uart2SendStr
;	-----------------------------------------
_Uart2SendStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Uart2SendStr_p_65536_44
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/stc8uart.h:105: while (*p)
	mov	dptr,#_Uart2SendStr_p_65536_44
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
	mov	dptr,#_Uart2SendStr_p_65536_44
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
	mov	dptr,#_Uart2SendStr_p_65536_44
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
;address                   Allocated with name '__IAP_ADDR_TRIG_address_65536_47'
;------------------------------------------------------------
;	./lib/EEPROM.h:17: void _IAP_ADDR_TRIG(unsigned int address)
;	-----------------------------------------
;	 function _IAP_ADDR_TRIG
;	-----------------------------------------
__IAP_ADDR_TRIG:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__IAP_ADDR_TRIG_address_65536_47
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:19: IAP_ADDRL = address;      //设置 IAP 低地址
	mov	dptr,#__IAP_ADDR_TRIG_address_65536_47
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
;address                   Allocated with name '_IapErase_address_65536_50'
;------------------------------------------------------------
;	./lib/EEPROM.h:34: void IapErase(unsigned int address)
;	-----------------------------------------
;	 function IapErase
;	-----------------------------------------
_IapErase:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapErase_address_65536_50
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
	mov	dptr,#_IapErase_address_65536_50
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
;address                   Allocated with name '_IapRead_address_65536_52'
;dat                       Allocated with name '_IapRead_dat_65536_53'
;------------------------------------------------------------
;	./lib/EEPROM.h:44: char IapRead(int address)
;	-----------------------------------------
;	 function IapRead
;	-----------------------------------------
_IapRead:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapRead_address_65536_52
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	./lib/EEPROM.h:47: IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP
	mov	_IAP_CONTR,#0x81
;	./lib/EEPROM.h:48: IAP_CMD = 1;           //设置 IAP 读命令
	mov	_IAP_CMD,#0x01
;	./lib/EEPROM.h:49: _IAP_ADDR_TRIG(address);
	mov	dptr,#_IapRead_address_65536_52
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
	mov	dptr,#_IapRead_dat_65536_53
	mov	a,_IAP_DATA
	movx	@dptr,a
;	./lib/EEPROM.h:52: IapIdle();      //关闭 IAP 功能
	lcall	_IapIdle
;	./lib/EEPROM.h:53: return dat;
	mov	dptr,#_IapRead_dat_65536_53
	movx	a,@dptr
;	./lib/EEPROM.h:54: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IapProgram'
;------------------------------------------------------------
;dat                       Allocated with name '_IapProgram_PARM_2'
;address                   Allocated with name '_IapProgram_address_65536_54'
;------------------------------------------------------------
;	./lib/EEPROM.h:56: void IapProgram(int address, char dat)
;	-----------------------------------------
;	 function IapProgram
;	-----------------------------------------
_IapProgram:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_IapProgram_address_65536_54
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
	mov	dptr,#_IapProgram_address_65536_54
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
;Allocation info for local variables in function 'Delay100ms'
;------------------------------------------------------------
;i                         Allocated with name '_Delay100ms_i_65536_80'
;j                         Allocated with name '_Delay100ms_j_65536_80'
;k                         Allocated with name '_Delay100ms_k_65536_80'
;------------------------------------------------------------
;	.\src\main.c:39: void Delay100ms() //@24.000MHz
;	-----------------------------------------
;	 function Delay100ms
;	-----------------------------------------
_Delay100ms:
;	.\src\main.c:43: _nop_();
	nop
;	.\src\main.c:44: _nop_();
	nop
;	.\src\main.c:52: while (--k)
	mov	r7,#0xd6
	mov	r6,#0x2d
	mov	r5,#0x0d
00101$:
	djnz	r7,00101$
;	.\src\main.c:54: } while (--j);
	djnz	r6,00101$
;	.\src\main.c:55: } while (--i);
	djnz	r5,00101$
;	.\src\main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay100us'
;------------------------------------------------------------
;i                         Allocated with name '_Delay100us_i_65536_83'
;j                         Allocated with name '_Delay100us_j_65536_83'
;------------------------------------------------------------
;	.\src\main.c:58: void Delay100us() //@24.000MHz
;	-----------------------------------------
;	 function Delay100us
;	-----------------------------------------
_Delay100us:
;	.\src\main.c:65: while (--j)
	mov	r7,#0x1b
	mov	r6,#0x04
00101$:
	djnz	r7,00101$
;	.\src\main.c:67: } while (--i);
	djnz	r6,00101$
;	.\src\main.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay1us'
;------------------------------------------------------------
;i                         Allocated with name '_Delay1us_i_65536_85'
;------------------------------------------------------------
;	.\src\main.c:69: void Delay1us() //@24.000MHz
;	-----------------------------------------
;	 function Delay1us
;	-----------------------------------------
_Delay1us:
;	.\src\main.c:74: while (--i)
	mov	r7,#0x06
00101$:
	djnz	r7,00101$
;	.\src\main.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ROM_Write'
;------------------------------------------------------------
;l                         Allocated with name '_ROM_Write_l_65536_86'
;h                         Allocated with name '_ROM_Write_h_65536_86'
;------------------------------------------------------------
;	.\src\main.c:78: void ROM_Write()
;	-----------------------------------------
;	 function ROM_Write
;	-----------------------------------------
_ROM_Write:
;	.\src\main.c:81: IapErase(0x0000);
	mov	dptr,#0x0000
	lcall	_IapErase
;	.\src\main.c:82: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:84: l = motor_circle;
	mov	dptr,#_motor_circle
	movx	a,@dptr
;	.\src\main.c:86: IapProgram(0x00, l);
	mov	dptr,#_IapProgram_PARM_2
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_IapProgram
;	.\src\main.c:87: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:88: IapProgram(0x01, h);
	mov	dptr,#_IapProgram_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_IapProgram
;	.\src\main.c:89: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:90: l = value_hz;
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
;	.\src\main.c:91: h = value_hz >> 8;
	mov	dptr,#_ROM_Write_h_65536_86
	mov	a,r7
	movx	@dptr,a
;	.\src\main.c:92: IapProgram(0x10, l);
	mov	dptr,#_IapProgram_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#0x0010
	lcall	_IapProgram
;	.\src\main.c:93: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:94: IapProgram(0x11, h);
	mov	dptr,#_ROM_Write_h_65536_86
	movx	a,@dptr
	mov	dptr,#_IapProgram_PARM_2
	movx	@dptr,a
	mov	dptr,#0x0011
;	.\src\main.c:95: }
	ljmp	_IapProgram
;------------------------------------------------------------
;Allocation info for local variables in function 'Tohome'
;------------------------------------------------------------
;	.\src\main.c:97: void Tohome()
;	-----------------------------------------
;	 function Tohome
;	-----------------------------------------
_Tohome:
;	.\src\main.c:100: for (i = 0; i < 100; i++)
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00107$:
;	.\src\main.c:102: PUL = 0;
;	assignBit
	clr	_P33
;	.\src\main.c:103: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:104: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:105: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:106: PUL = 1;
;	assignBit
	setb	_P33
;	.\src\main.c:107: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:108: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:109: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:100: for (i = 0; i < 100; i++)
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	subb	a,#0x00
	jc	00107$
;	.\src\main.c:111: while (1)
00105$:
;	.\src\main.c:113: if (X1 == 1)
	jb	_P07,00106$
;	.\src\main.c:115: PUL = 0;
;	assignBit
	clr	_P33
;	.\src\main.c:116: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:117: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:118: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:119: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:120: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:121: PUL = 1;
;	assignBit
	setb	_P33
;	.\src\main.c:122: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:123: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:124: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:125: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:126: Delay100us();
	lcall	_Delay100us
	sjmp	00105$
00106$:
;	.\src\main.c:128: return;
;	.\src\main.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Run'
;------------------------------------------------------------
;	.\src\main.c:131: void Run()
;	-----------------------------------------
;	 function Run
;	-----------------------------------------
_Run:
;	.\src\main.c:133: Y0 = 1;
;	assignBit
	setb	_P12
;	.\src\main.c:134: while (1)
00113$:
;	.\src\main.c:136: if (X2 == 0)
	jb	_P06,00113$
;	.\src\main.c:138: PCA_Run(value_max * motor_circle);
	mov	dptr,#_motor_circle
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_value_max
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	__mulint
	lcall	_PCA_Run
;	.\src\main.c:139: while (!PCA_state)
00101$:
	mov	dptr,#_PCA_state
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	jz	00101$
;	.\src\main.c:141: Y0 = 0;
;	assignBit
	clr	_P12
;	.\src\main.c:142: Tohome();
	lcall	_Tohome
;	.\src\main.c:143: while (1)
00108$:
;	.\src\main.c:145: if (X3 != 0 && X2 != 0)
	jnb	_P05,00108$
	jnb	_P06,00108$
;	.\src\main.c:148: Delay100us();
	lcall	_Delay100us
;	.\src\main.c:149: ROM_Write();
;	.\src\main.c:150: return;
;	.\src\main.c:153: }
	ljmp	_ROM_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Read'
;------------------------------------------------------------
;dat                       Allocated with name '_UART_Read_dat_65536_95'
;------------------------------------------------------------
;	.\src\main.c:155: void UART_Read(unsigned char dat)
;	-----------------------------------------
;	 function UART_Read
;	-----------------------------------------
_UART_Read:
;	.\src\main.c:157: buf = Uart2Read();
	lcall	_Uart2Read
	mov	r7,dpl
	mov	dptr,#_buf
	mov	a,r7
	movx	@dptr,a
;	.\src\main.c:158: if (buf != 0x0d && buf != 0x0a && buf != 'K')
	cjne	r7,#0x0d,00131$
	sjmp	00102$
00131$:
	cjne	r7,#0x0a,00132$
	sjmp	00102$
00132$:
	cjne	r7,#0x4b,00133$
	sjmp	00102$
00133$:
;	.\src\main.c:160: uart2buff[uart2num] = buf;
	mov	dptr,#_uart2num
	movx	a,@dptr
	mov	r6,a
	add	a,#_uart2buff
	mov	dpl,a
	clr	a
	addc	a,#(_uart2buff >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	.\src\main.c:161: uart2num += 1;
	mov	dptr,#_uart2num
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
00102$:
;	.\src\main.c:163: if (buf == 0x0d || buf == 0x0a || buf == 'K')
	mov	dptr,#_buf
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00134$
	sjmp	00105$
00134$:
	cjne	r7,#0x0a,00135$
	sjmp	00105$
00135$:
	cjne	r7,#0x4b,00109$
00105$:
;	.\src\main.c:165: uart2buff[uart2num] = buf;
	mov	dptr,#_uart2num
	movx	a,@dptr
	add	a,#_uart2buff
	mov	r7,a
	clr	a
	addc	a,#(_uart2buff >> 8)
	mov	r6,a
	mov	dptr,#_buf
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r7
	mov	dph,r6
	movx	@dptr,a
;	.\src\main.c:166: uart2num += 1;
	mov	dptr,#_uart2num
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
;	.\src\main.c:167: uart2end = 1;
	mov	dptr,#_uart2end
	mov	a,#0x01
	movx	@dptr,a
00109$:
;	.\src\main.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Rom_Init'
;------------------------------------------------------------
;h                         Allocated with name '_Rom_Init_h_65536_99'
;l                         Allocated with name '_Rom_Init_l_65536_99'
;------------------------------------------------------------
;	.\src\main.c:171: void Rom_Init()
;	-----------------------------------------
;	 function Rom_Init
;	-----------------------------------------
_Rom_Init:
;	.\src\main.c:174: l = IapRead(0x00);
	mov	dptr,#0x0000
	lcall	_IapRead
;	.\src\main.c:175: h = IapRead(0x01);
	mov	dptr,#0x0001
	lcall	_IapRead
;	.\src\main.c:178: motor_circle = motor_circle & l;
	mov	dptr,#_motor_circle
	clr	a
	movx	@dptr,a
;	.\src\main.c:180: l = IapRead(0x10);
	mov	dptr,#0x0010
	lcall	_IapRead
	mov	r7,dpl
;	.\src\main.c:181: h = IapRead(0x11);
	mov	dptr,#0x0011
	push	ar7
	lcall	_IapRead
	mov	r6,dpl
	pop	ar7
;	.\src\main.c:182: value_hz = h;
;	.\src\main.c:183: value_hz = value_hz << 8;
	mov	ar5,r6
	mov	r6,#0x00
;	.\src\main.c:184: value_hz = value_hz & l;
	mov	r4,#0x00
	mov	dptr,#_value_hz
	mov	a,r7
	anl	a,r6
	movx	@dptr,a
	mov	a,r4
	anl	a,r5
	inc	dptr
	movx	@dptr,a
;	.\src\main.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Handle'
;------------------------------------------------------------
;dat                       Allocated with name '_UART_Handle_dat_65536_100'
;------------------------------------------------------------
;	.\src\main.c:187: void UART_Handle(char *dat)
;	-----------------------------------------
;	 function UART_Handle
;	-----------------------------------------
_UART_Handle:
;	.\src\main.c:189: if (uart2end)
	mov	dptr,#_uart2end
	movx	a,@dptr
	jnz	00209$
	ret
00209$:
;	.\src\main.c:191: if (strstr(uart2buff, Button_02))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Button_02
	movx	@dptr,a
	mov	a,#(_Button_02 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00105$
;	.\src\main.c:193: switch (Page)
	mov	dptr,#_Page
	movx	a,@dptr
	mov	r7,a
	jz	00212$
	sjmp	00105$
00212$:
;	.\src\main.c:197: Run();
	lcall	_Run
;	.\src\main.c:202: }
00105$:
;	.\src\main.c:204: if (strstr(uart2buff, Button_03))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Button_03
	movx	@dptr,a
	mov	a,#(_Button_03 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00110$
;	.\src\main.c:206: switch (Page)
	mov	dptr,#_Page
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00110$
;	.\src\main.c:210: motor_circle += 1;
	mov	dptr,#_motor_circle
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
;	.\src\main.c:215: }
00110$:
;	.\src\main.c:217: if (strstr(uart2buff, Button_04))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Button_04
	movx	@dptr,a
	mov	a,#(_Button_04 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00116$
;	.\src\main.c:219: switch (Page)
	mov	dptr,#_Page
	movx	a,@dptr
	mov	r7,a
	jz	00111$
;	.\src\main.c:221: case 0:
	cjne	r7,#0x01,00116$
	sjmp	00112$
00111$:
;	.\src\main.c:223: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
;	.\src\main.c:224: break;
;	.\src\main.c:226: case 1:
	sjmp	00116$
00112$:
;	.\src\main.c:228: motor_circle -= 1;
	mov	dptr,#_motor_circle
	movx	a,@dptr
	mov	r7,a
	dec	a
	movx	@dptr,a
;	.\src\main.c:233: }
00116$:
;	.\src\main.c:235: if (strstr(uart2buff, Button_07))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Button_07
	movx	@dptr,a
	mov	a,#(_Button_07 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00121$
;	.\src\main.c:237: switch (Page)
	mov	dptr,#_Page
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00121$
;	.\src\main.c:241: value_hz += 5;
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_value_hz
	mov	a,#0x05
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	.\src\main.c:246: }
00121$:
;	.\src\main.c:248: if (strstr(uart2buff, Button_08))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Button_08
	movx	@dptr,a
	mov	a,#(_Button_08 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00126$
;	.\src\main.c:250: switch (Page)
	mov	dptr,#_Page
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00126$
;	.\src\main.c:254: value_hz -= 5;
	mov	dptr,#_value_hz
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xfb
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_value_hz
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	.\src\main.c:259: }
00126$:
;	.\src\main.c:261: if (strstr(uart2buff, Page_00))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Page_00
	movx	@dptr,a
	mov	a,#(_Page_00 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	orl	a,r6
	jz	00128$
;	.\src\main.c:263: Page = 0;
	mov	dptr,#_Page
	clr	a
	movx	@dptr,a
00128$:
;	.\src\main.c:265: if (strstr(uart2buff, Page_01))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Page_01
	movx	@dptr,a
	mov	a,#(_Page_01 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	orl	a,r6
	jz	00130$
;	.\src\main.c:267: Page = 1;
	mov	dptr,#_Page
	mov	a,#0x01
	movx	@dptr,a
00130$:
;	.\src\main.c:269: if (strstr(uart2buff, Page_02))
	mov	dptr,#_strstr_PARM_2
	mov	a,#_Page_02
	movx	@dptr,a
	mov	a,#(_Page_02 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uart2buff
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00132$
;	.\src\main.c:271: Page = 2;
	mov	dptr,#_Page
	mov	a,#0x02
	movx	@dptr,a
00132$:
;	.\src\main.c:273: uart2num = 0;
	mov	dptr,#_uart2num
	clr	a
	movx	@dptr,a
;	.\src\main.c:274: uart2end = 0;
	mov	dptr,#_uart2end
	movx	@dptr,a
;	.\src\main.c:275: i = sizeof(uart2buff) / sizeof(uart2buff[0]);
	mov	dptr,#_i
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	.\src\main.c:276: for (ii = 0; ii < i; ii++)
	mov	dptr,#_ii
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00137$:
	mov	dptr,#_ii
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i
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
	jnc	00139$
;	.\src\main.c:278: uart2buff[ii] = 0;
	mov	a,r6
	add	a,#_uart2buff
	mov	dpl,a
	mov	a,r7
	addc	a,#(_uart2buff >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	.\src\main.c:276: for (ii = 0; ii < i; ii++)
	mov	dptr,#_ii
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00137$
00139$:
;	.\src\main.c:281: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	.\src\main.c:283: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\src\main.c:285: P_SW1 = 0x30;
	mov	_P_SW1,#0x30
;	.\src\main.c:286: P1 = 0x00;
	mov	_P1,#0x00
;	.\src\main.c:287: P0M1 = 0x00;
	mov	_P0M1,#0x00
;	.\src\main.c:288: P0M0 = 0X00;
	mov	_P0M0,#0x00
;	.\src\main.c:289: P4M1 = 0x00;
	mov	_P4M1,#0x00
;	.\src\main.c:290: P4M0 = 0x00;
	mov	_P4M0,#0x00
;	.\src\main.c:291: P1M0 = 0xfe;
	mov	_P1M0,#0xfe
;	.\src\main.c:292: P1M1 = 0x00;
	mov	_P1M1,#0x00
;	.\src\main.c:293: PCA_Init();
	lcall	_PCA_Init
;	.\src\main.c:294: Uart2Init();
	lcall	_Uart2Init
;	.\src\main.c:295: Rom_Init();
	lcall	_Rom_Init
;	.\src\main.c:297: IE2 = 0x01;
	mov	_IE2,#0x01
;	.\src\main.c:298: ES = 1;
;	assignBit
	setb	_ES
;	.\src\main.c:299: EA = 1;
;	assignBit
	setb	_EA
;	.\src\main.c:300: while (1)
00106$:
;	.\src\main.c:302: if (X2 != 0)
	jnb	_P06,00104$
;	.\src\main.c:304: if (X0 == 0)
	jb	_P43,00104$
;	.\src\main.c:306: Run();
	lcall	_Run
00104$:
;	.\src\main.c:309: UART_Read(0);
	mov	dpl,#0x00
	lcall	_UART_Read
;	.\src\main.c:310: UART_Handle(0);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_UART_Handle
;	.\src\main.c:312: }
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__value_hz:
	.byte #0x10, #0x27	; 10000
__xinit__value_count:
	.byte #0x00, #0x00	; 0
__xinit__value_max:
	.byte #0x40, #0x06	; 1600
__xinit__PCA_state:
	.byte #0x00, #0x00	; 0
__xinit__Button_00:
	.ascii "[BN:0]"
	.db 0x00
__xinit__Button_01:
	.ascii "[BN:1]"
	.db 0x00
__xinit__Button_02:
	.ascii "[BN:2]"
	.db 0x00
__xinit__Button_03:
	.ascii "[BN:3]"
	.db 0x00
__xinit__Button_04:
	.ascii "[BN:4]"
	.db 0x00
__xinit__Button_05:
	.ascii "[BN:5]"
	.db 0x00
__xinit__Button_06:
	.ascii "[BN:6]"
	.db 0x00
__xinit__Button_07:
	.ascii "[BN:7]"
	.db 0x00
__xinit__Button_08:
	.ascii "[BN:8]"
	.db 0x00
__xinit__Button_09:
	.ascii "[BN:9]"
	.db 0x00
__xinit__tests:
	.ascii "[BN:2]"
	.db 0x00
__xinit__Page_00:
	.ascii "PAGE0OK"
	.db 0x00
__xinit__Page_01:
	.ascii "PAGE1OK"
	.db 0x00
__xinit__Page_02:
	.ascii "PAGE2OK"
	.db 0x00
__xinit__Page_03:
	.ascii "PAGE3OK"
	.db 0x00
__xinit__Page:
	.db #0x00	; 0
__xinit__uart1buff:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__uart2buff:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__uart1num:
	.db #0x00	; 0
__xinit__uart2num:
	.db #0x00	; 0
__xinit__uart1end:
	.db #0x00	; 0
__xinit__uart2end:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
