#ifndef STC8TIMER_H
#define STC8TIMER_H

#include"stc8.h"



void Timer7Init(void) //1����@24.000MHz
{
    T4T3M |= 0x20; //��ʱ��ʱ��1Tģʽ
    T4L = 0x40;    //���ö�ʱ��ֵ
    T4H = 0xA2;    //���ö�ʱ��ֵ
    T4T3M |= 0x80; //��ʱ��4��ʼ��ʱ
}

#endif