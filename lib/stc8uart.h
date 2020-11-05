#include"stc8.h"
#include"config.h"


void Uart1Isr() __interrupt(UART1_VECTOR)
{
    if (TI)
    {
        TI = 0;
        uart1.busy = 0;
    }
    if (RI)
    {
        RI = 0;
        uart1.buffer[uart1.wptr++] = SBUF;
        uart1.wptr &= 0x0f;
    }
}
void Uart1Init()
{
    SCON = 0x50;
    TMOD = 0x00;
    TL1 = BRT;
    TH1 = BRT >> 8;
    TR1 = 1;
    AUXR |= 0x40;
    uart1.busy = 0;
    uart1.wptr = 0;
    uart1.rptr = 0;
}

char Uart1Read()
{
    if (uart1.rptr != uart1.wptr)
    {
        char tmp = uart1.buffer[uart1.rptr++];
        uart1.rptr &= 0x0f;
        return tmp;
    }
}

void Uart1Send(char dat)
{
    while (uart1.busy)
        ;
    uart1.busy = 1;
    SBUF = dat;
}

void Uart1SendStr(char *p)
{
    while (*p)
    {
        Uart1Send(*p++);
    }
}

void Uart2Isr() __interrupt(UART2_VECTOR)
{
    if (S2CON & S2TI)
    {
        S2CON &= ~S2TI;
        uart2.busy = 0;
    }
    if (S2CON & S2RI)
    {
        S2CON &= ~S2RI;
        uart2.buffer[uart2.wptr++] = S2BUF;
        uart2.wptr &= 0x0f;
    }
}

void Uart2Init()
{
    S2CON = 0x10;
    T2L = BRT;
    T2H = BRT >> 8;
    AUXR |= 0x14;
    uart2.busy = 0;
    uart2.wptr = 0;
    uart2.rptr = 0;
}

char Uart2Read()
{
    if (uart2.rptr != uart2.wptr)
    {
        char tmp = uart2.buffer[uart2.rptr++];
        uart2.rptr &= 0x0f;
        return tmp;
    }
    return 0;
}

void Uart2Send(char dat)
{
    while (uart2.busy)
        ;
    uart2.busy = 1;
    S2BUF = dat;
}

void Uart2SendStr(char *p)
{
    while (*p)
    {
        Uart2Send(*p++);
    }
}

