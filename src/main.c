#include "stc8.h"
#include "delay.h"
#include "config.h"
#include "PCA.h"
#include "stc8uart.h"
#include "EEPROM.h"
#include"io.h"




void main()
{
    P_SW1 = 0x30;

    PCA_Init();
    Uart1Init();

    EA = 1;
    value_hz = 5000;
    value_max = 10000;
    while (1)
    {
        if (X0 == 0)
        {
            PCA_Run();
        }

        if (X1 == 0)
        {
            PCA_Stop();
        }
    }
}
