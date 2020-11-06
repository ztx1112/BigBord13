
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
      IAP_ADDRL = address;      //���� IAP �͵�ַ
      IAP_ADDRH = address >> 8; //���� IAP �ߵ�ַ
      IAP_TRIG = 0x5a;          //д��������(0x5a)
      IAP_TRIG = 0xa5;          //д��������(0xa5)
}

void IapIdle()
{
      IAP_CONTR=0;      //�ر�IAP����
      IAP_CMD = 0;      //�������Ĵ���
      IAP_TRIG = 0;     //��������Ĵ���
      IAP_ADDRH = 0x80; //����ַ���õ��� IAP ����
      IAP_ADDRL = 0;
}

void IapErase(unsigned int address)
{
      EA = 0;                             //��ֹ�ж�
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //ʹ�� IAP�����õȴ�ʱ��
      IAP_CMD = 3;                        //���� IAP ��������
      _IAP_ADDR_TRIG(address);
      _nop_();                            //
      IapIdle();                          //�ر� IAP ����
}

char IapRead(int address)
{
      char dat;
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //ʹ�� IAP
      IAP_CMD = 1;           //���� IAP ������
      _IAP_ADDR_TRIG(address);
      _nop_();
      dat = IAP_DATA; //�� IAP ����
      IapIdle();      //�ر� IAP ����
      return dat;
}

void IapProgram(int address, char dat)
{
      IAP_CONTR = IAPEN + ISP_WAIT_24MHZ; //ʹ�� IAP
      IAP_CMD = 2;           //���� IAP д����
      IAP_DATA = dat;        //д IAP ����
      _IAP_ADDR_TRIG(address);
      _nop_();
      IapIdle(); //�ر� IAP ����
}

#endif