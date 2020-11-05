#ifndef RTOS_H
#define RTOS_H
#include"stc8.h"

//输入类型
#define ACT_TYPE_IN_NC  0x10        //常闭
#define ACT_TYPE_IN_NO  0x11        //常开
#define ACT_TYPE_IN_RISING  0x12    //上升沿
#define ACT_TYPE_IN_FALLING 0x13    //下降沿

//输出类型
#define ACT_TYPE_OUT_NORMAL 0x20    //通常输出
#define ACT_TYPE_OUT_HIGHPULSE  0x21    //高速脉冲输出



struct Action
{
    unsigned char port;     //io端口
    unsigned char state;    //端口状态
    unsigned char type;     //动作类型
    unsigned char value;    //
    unsigned char isend;    //结束
};





#endif