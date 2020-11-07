#ifndef STC8TIMER_H
#define STC8TIMER_H

#include "stc8.h"

// void Timer4isr() __interrupt(TIMER4_VECTOR)
// {
//     AUXINTIF &= ~T4IF;      //清中断标志
// }

void Timer4Init(void) //1毫秒@24.000MHz
{
    T4T3M |= 0x20; //定时器时钟1T模式
    T4L = 0x40;    //设置定时初值
    T4H = 0xA2;    //设置定时初值
    T4T3M |= 0x80; //定时器4开始计时
}

#endif