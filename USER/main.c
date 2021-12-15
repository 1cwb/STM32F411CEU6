#include "stm32f4xx.h"
#include "delay.h"
#include "bsp_usart.h"
#include "led.h"
#include "key.h"

#include "stm32f4xx.h"
  
void Delay(__IO uint32_t nCount);

void Delay(__IO uint32_t nCount)
{
  while(nCount--){}
}

int main(void)
{
  USART1_Config(115200);
  LED_init();
  KEY_Init();
  RCC_ClocksTypeDef rcc;
  RCC_GetClocksFreq(&rcc);
  while(1){
    if(IS_KEY1_ON())
    {
        printf("sys clock is %lu\n",rcc.SYSCLK_Frequency);
        LED1_ON();
    }
    Delay(0x7FFFFF);
		LED1_OFF();
		
	}
}

