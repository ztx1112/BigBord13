/**! 
    \file gpio.h 
    \brief GPIO.
*/

#ifndef GPIO_H
#define GPIO_H

#include "stc8.h"

#define IN_STATE_OFF 0x10      //关闭
#define IN_STATE_ON 0x11      //打开
#define IN_STATE_RISING 0x12  //上升沿
#define IN_STATE_FALLING 0x13 //下降沿

unsigned char GPIO_Oldstate[8];
unsigned char GPIO_State[8];


/*! 
    \brief 获取 GPIO 状态.
    \param port 端口 P0~P7.
    \param pin PIN脚 0~7.
    \returns 返回 P \a port \a pin 状态.
*/
char Get_IOstate(char port,char pin)
{
    char state,oldstate;
    oldstate = GPIO_Oldstate[port]&(1<<pin);
    state=GPIO_State[port]&(1<<pin);
    if(oldstate==state==1)
    {
        return IN_STATE_OFF;
    }
    if(oldstate==state==0)
    {
        return IN_STATE_ON;
    }
    if(oldstate>state)
    {
        return IN_STATE_RISING;
    }
    if(oldstate<state)
    {
        return IN_STATE_FALLING;
    }
}


/*! 
   \brief 更新 gpio .
*/
void GPIO_Updata()
{
    GPIO_Oldstate[0] = GPIO_State[0];
    GPIO_Oldstate[1] = GPIO_State[1];
    GPIO_Oldstate[2] = GPIO_State[2];
    GPIO_Oldstate[3] = GPIO_State[3];
    GPIO_Oldstate[4] = GPIO_State[4];
    GPIO_Oldstate[5] = GPIO_State[5];
    GPIO_Oldstate[6] = GPIO_State[6];
    GPIO_Oldstate[7] = GPIO_State[7];

    GPIO_State[0] = P0;
    GPIO_State[1] = P1;
    GPIO_State[2] = P2;
    GPIO_State[3] = P3;
    GPIO_State[4] = P4;
    GPIO_State[5] = P5;
    GPIO_State[6] = P6;
    GPIO_State[7] = P7;
}

#endif