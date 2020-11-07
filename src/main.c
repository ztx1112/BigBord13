#include "stc8.h"
#include "delay.h"
#include "config.h"
#include "PCA.h"
#include "stc8uart.h"
#include "EEPROM.h"
#include"io.h"
#include"stc8timer.h"
#include"gpio.h"




void main()
{
    P_SW1 = 0x30;   //ÇÐ»»Îª *0_4

    PCA_Init();
    Uart1Init();
    Timer4Init();

    EA = 1;

    while (1)
    {
        if(AUXINTIF&T4IF)
        {
            GPIO_Updata();
        }
    }
}
