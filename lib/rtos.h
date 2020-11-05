#ifndef RTOS_H
#define RTOS_H
#include"stc8.h"

//��������
#define ACT_TYPE_IN_NC  0x10        //����
#define ACT_TYPE_IN_NO  0x11        //����
#define ACT_TYPE_IN_RISING  0x12    //������
#define ACT_TYPE_IN_FALLING 0x13    //�½���

//�������
#define ACT_TYPE_OUT_NORMAL 0x20    //ͨ�����
#define ACT_TYPE_OUT_HIGHPULSE  0x21    //�����������



struct Action
{
    unsigned char port;     //io�˿�
    unsigned char state;    //�˿�״̬
    unsigned char type;     //��������
    unsigned char value;    //
    unsigned char isend;    //����
};





#endif