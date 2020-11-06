
#ifndef __EEPROM_H
#define __EEPROM_H

#include "config.h"
#include "stc8.h"

#define ISP_WAIT_1MHZ 7
#define ISP_WAIT_2MHZ 6
#define ISP_WAIT_3MHZ 5
#define ISP_WAIT_6MHZ 4
#define ISP_WAIT_12MHZ 3
#define ISP_WAIT_20MHZ 2
#define ISP_WAIT_24MHZ 1
#define ISP_WAIT_30MHZ 0

void _IAP_ADDR_TRIG(unsigned int address)
{
      IAP_ADDRL = address;      //设置 IAP 低地址
      IAP_ADDRH = address >> 8; //设置 IAP 高地址
      IAP_TRIG = 0x5a;          //写触发命令(0x5a)
      IAP_TRIG = 0xa5;          //写触发命令(0xa5)
}

void IapIdle()
{
      IAP_CONTR=0;      //关闭IAP功能
      IAP_CMD = 0;      //清除命令寄存器
      IAP_TRIG = 0;     //清除触发寄存器
      IAP_ADDRH = 0x80; //将地址设置到非 IAP 区域
      IAP_ADDRL = 0;
}

void IapErase(unsigned int address)
{
      EA = 0;                             //禁止中断
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP并设置等待时间
      IAP_CMD = 3;                        //设置 IAP 擦除命令
      _IAP_ADDR_TRIG(address);
      _nop_();                            //
      IapIdle();                          //关闭 IAP 功能
}

char IapRead(int address)
{
      char dat;
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP
      IAP_CMD = 1;           //设置 IAP 读命令
      _IAP_ADDR_TRIG(address);
      _nop_();
      dat = IAP_DATA; //读 IAP 数据
      IapIdle();      //关闭 IAP 功能
      return dat;
}

void IapProgram(int address, char dat)
{
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //使能 IAP
      IAP_CMD = 2;           //设置 IAP 写命令
      IAP_DATA = dat;        //写 IAP 数据
      _IAP_ADDR_TRIG(address);
      _nop_();
      IapIdle(); //关闭 IAP 功能
}

#endif