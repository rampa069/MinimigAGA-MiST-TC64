#include "hardware.h"

int putchar(int c)
{
	RS232(c);
	return(c);
}

