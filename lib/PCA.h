#ifndef PCA_H
#define PCA_H

#include "stc8.h"
#include "config.h"

#define HZ(hz) (24000000l / hz)

unsigned int value_hz = 10000; //�趨Ƶ��
unsigned int value;
unsigned int value_count = 0;  //���徭����
unsigned int value_max = 1600; //�����趨��
unsigned int PCA_state = 0;    //PCA״̬

unsigned char motor_circle;

void PCA_Stop();

void PCA_Isr() __interrupt(PCA_VECTOR)
{
    CCAP0L = value;
    CCAP0H = value >> 8;
    value += HZ(value_hz);
    if (CCF0 != 0)
    {
        value_count += 1;
    }
    if (value_count >= value_max)
    {
        PCA_Stop();
        value_count = 0;
        PCA_state = 1;
    }
    CCF0 = 0;
}

void PCA_Init()
{
    CCON = 0x00;
    CMOD = 0x08; //PCAʱ��Ϊϵͳʱ��
    CL = 0x00;
    CH = 0x00;
    CCAPM0 = 0x4d; //PCAģ��0Ϊ16λ��ʱ��ģʽ��ʹ���������
    value = HZ(value_hz);
    CCAP0L = value;
    CCAP0H = value >> 8;
    value += HZ(value_hz);
    EA = 1;
}

void PCA_Run(unsigned int v)
{
    value_max = v;
    value_count = 0;
    PCA_state = 0;
    CCAPM0 = 0x4d; //PCAģ��0Ϊ16λ��ʱ��ģʽ��ʹ���������
    value = HZ(value_hz);
    CCAP0L = value;
    CCAP0H = value >> 8;
    value += HZ(value_hz);
    CR = 1;
}

void PCA_Stop()
{
    CCAPM0 = 0x00;
    value = HZ(value_hz);
    CCAP0L = value;
    CCAP0H = value >> 8;
    CR = 0;
}

#endif