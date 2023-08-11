#include "uart.h"

int putchar(int c)
{
//	while(!(HW_UART(REG_UART)&(1<<REG_UART_TXREADY)))
//		;
	HW_UART(REG_UART)=c;
	return(c);
}

