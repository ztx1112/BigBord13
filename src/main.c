#include "stc8.h"
#include "delay.h"
#include "config.h"
#include "PCA.h"
#include "stc8uart.h"
#include "EEPROM.h"
#include "io.h"
#include"string.h"

char Button_00[] = "[BN:0]";
char Button_01[] = "[BN:1]";
char Button_02[] = "[BN:2]";
char Button_03[] = "[BN:3]";
char Button_04[] = "[BN:4]";
char Button_05[] = "[BN:5]";
char Button_06[] = "[BN:6]";
char Button_07[] = "[BN:7]";
char Button_08[] = "[BN:8]";
char Button_09[] = "[BN:9]";

char tests[] = "[BN:2]";

char Page_00[] = "PAGE0OK";
char Page_01[] = "PAGE1OK";
char Page_02[] = "PAGE2OK";
char Page_03[] = "PAGE3OK";

unsigned char Page = 0; //µ±Ç°Ò³Ãæ
unsigned char buf;

char uart1buff[20] = {0};
char uart2buff[20] = {0};
unsigned char uart1num = 0;
unsigned char uart2num = 0;
unsigned char uart1end = 0;
unsigned char uart2end = 0;

unsigned int i, ii;
void Delay100ms() //@24.000MHz
{
    unsigned char i, j, k;

    _nop_();
    _nop_();
    i = 13;
    j = 45;
    k = 214;
    do
    {
        do
        {
            while (--k)
                ;
        } while (--j);
    } while (--i);
}

void Delay100us() //@24.000MHz
{
    unsigned char i, j;
    i = 4;
    j = 27;
    do
    {
        while (--j)
            ;
    } while (--i);
}
void Delay1us() //@24.000MHz
{
    unsigned char i;

    i = 6;
    while (--i)
        ;
}

void ROM_Write()
{
    unsigned char l, h;
    IapErase(0x0000);
    Delay100us();

    l = motor_circle;
    h = motor_circle >> 8;
    IapProgram(0x00, l);
    Delay100us();
    IapProgram(0x01, h);
    Delay100us();
    l = value_hz;
    h = value_hz >> 8;
    IapProgram(0x10, l);
    Delay100us();
    IapProgram(0x11, h);
}

void Tohome()
{
    i = 0;
    for (i = 0; i < 100; i++)
    {
        PUL = 0;
        Delay100us();
        Delay100us();
        Delay100us();
        PUL = 1;
        Delay100us();
        Delay100us();
        Delay100us();
    }
    while (1)
    {
        if (X1 == 1)
            break;
        PUL = 0;
        Delay100us();
        Delay100us();
        Delay100us();
        Delay100us();
        Delay100us();
        PUL = 1;
        Delay100us();
        Delay100us();
        Delay100us();
        Delay100us();
        Delay100us();
    }
    return;
}

void Run()
{
    Y0 = 1;
    while (1)
    {
        if (X2 == 0)
        {
            PCA_Run(value_max * motor_circle);
            while (!PCA_state)
                ;
            Y0 = 0;
            Tohome();
            while (1)
            {
                if (X3 != 0 && X2 != 0)
                    break;
            }
            Delay100us();
            ROM_Write();
            return;
        }
    }
}

void UART_Read(unsigned char dat)
{
    buf = Uart2Read();
    if (buf != 0x0d && buf != 0x0a && buf != 'K')
    {
        uart2buff[uart2num] = buf;
        uart2num += 1;
    }
    if (buf == 0x0d || buf == 0x0a || buf == 'K')
    {
        uart2buff[uart2num] = buf;
        uart2num += 1;
        uart2end = 1;
    }
}

void Rom_Init()
{
    unsigned char h, l;
    l = IapRead(0x00);
    h = IapRead(0x01);
    motor_circle = h;
    motor_circle = motor_circle << 8;
    motor_circle = motor_circle & l;

    l = IapRead(0x10);
    h = IapRead(0x11);
    value_hz = h;
    value_hz = value_hz << 8;
    value_hz = value_hz & l;
}

void UART_Handle(char *dat)
{
    if (uart2end)
    {
        if (strstr(uart2buff, Button_02))
        {
            switch (Page)
            {
            case 0:
            {
                Run();
                break;
            }
            default:
                break;
            }
        }
        if (strstr(uart2buff, Button_03))
        {
            switch (Page)
            {
            case 1:
            {
                motor_circle += 1;
                break;
            }
            default:
                break;
            }
        }
        if (strstr(uart2buff, Button_04))
        {
            switch (Page)
            {
            case 0:
            {
                IAP_CONTR = 0x60;
                break;
            }
            case 1:
            {
                motor_circle -= 1;
                break;
            }
            default:
                break;
            }
        }
        if (strstr(uart2buff, Button_07))
        {
            switch (Page)
            {
            case 1:
            {
                value_hz += 5;
                break;
            }
            default:
                break;
            }
        }
        if (strstr(uart2buff, Button_08))
        {
            switch (Page)
            {
            case 1:
            {
                value_hz -= 5;
                break;
            }
            default:
                break;
            }
        }
        if (strstr(uart2buff, Page_00))
        {
            Page = 0;
        }
        if (strstr(uart2buff, Page_01))
        {
            Page = 1;
        }
        if (strstr(uart2buff, Page_02))
        {
            Page = 2;
        }
        uart2num = 0;
        uart2end = 0;
        i = sizeof(uart2buff) / sizeof(uart2buff[0]);
        for (ii = 0; ii < i; ii++)
        {
            uart2buff[ii] = 0;
        }
    }
}

void main()
{
    P_SW1 = 0x30;
    P1 = 0x00;
    P0M1 = 0x00;
    P0M0 = 0X00;
    P4M1 = 0x00;
    P4M0 = 0x00;
    P1M0 = 0xfe;
    P1M1 = 0x00;
    PCA_Init();
    Uart2Init();
    Rom_Init();

    IE2 = 0x01;
    ES = 1;
    EA = 1;
    while (1)
    {
        if (X2 != 0)
        {
            if (X0 == 0)
            {
                Run();
            }
        }
        UART_Read(0);
        UART_Handle(0);
    }
}
