#include "delay.h"

void DelayUs(uint16_t us)
{
    uint16_t i, n = (us * CLOCK) >> 5;
    for (i = 0; i < n; i++)
        ;
}

void Delay(uint16_t ms)
{
    uint16_t i, n = 62 * CLOCK;
    while (ms--)
    {
        for (i = 0; i < n; i++)
            ;
    }
}


//��ʱn����
void delay_ms(unsigned int n)
{
    unsigned int i=0,j=0;
    for(i=0;i<n;i++)
        for(j=0;j<357;j++); 
}