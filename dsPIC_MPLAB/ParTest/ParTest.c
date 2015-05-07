/*
    FreeRTOS V8.2.1 - Copyright (C) 2015 Real Time Engineers Ltd.
    All rights reserved

    VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.

    This file is part of the FreeRTOS distribution.

    FreeRTOS is free software; you can redistribute it and/or modify it under
    the terms of the GNU General Public License (version 2) as published by the
    Free Software Foundation >>!AND MODIFIED BY!<< the FreeRTOS exception.

    ***************************************************************************
    >>!   NOTE: The modification to the GPL is included to allow you to     !<<
    >>!   distribute a combined work that includes FreeRTOS without being   !<<
    >>!   obliged to provide the source code for proprietary components     !<<
    >>!   outside of the FreeRTOS kernel.                                   !<<
    ***************************************************************************

    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.  Full license text is available on the following
    link: http://www.freertos.org/a00114.html

    ***************************************************************************
     *                                                                       *
     *    FreeRTOS provides completely free yet professionally developed,    *
     *    robust, strictly quality controlled, supported, and cross          *
     *    platform software that is more than just the market leader, it     *
     *    is the industry's de facto standard.                               *
     *                                                                       *
     *    Help yourself get started quickly while simultaneously helping     *
     *    to support the FreeRTOS project by purchasing a FreeRTOS           *
     *    tutorial book, reference manual, or both:                          *
     *    http://www.FreeRTOS.org/Documentation                              *
     *                                                                       *
    ***************************************************************************

    http://www.FreeRTOS.org/FAQHelp.html - Having a problem?  Start by reading
    the FAQ page "My application does not run, what could be wrong?".  Have you
    defined configASSERT()?

    http://www.FreeRTOS.org/support - In return for receiving this top quality
    embedded software for free we request you assist our global community by
    participating in the support forum.

    http://www.FreeRTOS.org/training - Investing in training allows your team to
    be as productive as possible as early as possible.  Now you can receive
    FreeRTOS training directly from Richard Barry, CEO of Real Time Engineers
    Ltd, and the world's leading authority on the world's leading RTOS.

    http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
    including FreeRTOS+Trace - an indispensable productivity tool, a DOS
    compatible FAT file system, and our tiny thread aware UDP/IP stack.

    http://www.FreeRTOS.org/labs - Where new FreeRTOS products go to incubate.
    Come and try FreeRTOS+TCP, our new open source TCP/IP stack for FreeRTOS.

    http://www.OpenRTOS.com - Real Time Engineers ltd. license FreeRTOS to High
    Integrity Systems ltd. to sell under the OpenRTOS brand.  Low cost OpenRTOS
    licenses offer ticketed support, indemnification and commercial middleware.

    http://www.SafeRTOS.com - High Integrity Systems also provide a safety
    engineered and independently SIL3 certified version for use in safety and
    mission critical applications that require provable dependability.

    1 tab == 4 spaces!
*/

/* Scheduler includes. */
#include "FreeRTOS.h"

/* Demo app includes. */
#include "partest.h"

#define ptOUTPUT 	0
#define ptALL_OFF	0

unsigned portBASE_TYPE uxOutput;

/*-----------------------------------------------------------
 * Simple parallel port IO routines.
 *-----------------------------------------------------------*/

void vParTestInitialise( void )
{

        //Fosc = Fin * (PLLDIV+2)
    //          ---------------------
    //        ((PLLPRE+2)*2(PLLPOST+1))
    //PLLFBD = PLLDIV
    ///FIN = FRC oscillateur interne = 7.37 MHz

    PLLFBD=41;                          //
    CLKDIVbits.PLLPOST=0;		//
    CLKDIVbits.PLLPRE=0;		//
    CLKDIVbits.FRCDIV=0;                //FRC is not divided in the first divider
    CLKDIVbits.DOZEN= 0;                //FCY=Fosc/2

    // In that configuration: Fosc= 79227500
    // Fcy= 39613750
    // FP = FCY

    // Initiate Clock Switch to Internal FRC with PLL (NOSC = 0b001)
    __builtin_write_OSCCONH(0x01);
    __builtin_write_OSCCONL(OSCCON | 0x01);
    // Wait for Clock switch to occur
    while (OSCCONbits.COSC != 0b001);
    // Wait for PLL to lock
    while(OSCCONbits.LOCK!=1) {};
    RCONbits.SWDTEN=0;            /* Disable Watch Dog Timer*/








	/* The explorer 16 board has LED's on port A.  All bits are set as output
	so PORTA is read-modified-written directly.  Two pins have change 
	notification pullups that need disabling. */
	CNPU2bits.CN22PUE = 0;
	CNPU2bits.CN23PUE = 0;
	TRISA = ptOUTPUT;
	PORTA = ptALL_OFF;
	uxOutput = ptALL_OFF;



    /*This commands is here to unlock the IOLOCK register
     When this register is = 1, it is unauthorised to modify the RP pins
     * and to remap the IOs */
    __builtin_write_OSCCONL(OSCCON & 0xDF);

    /*Initialize the Ports */
    TRISA = 0x0000;
    LATA  = 0x0000;
    PORTA = 0x0000;

    //Only RB1 (RP1) in RX mode
    TRISB = 0;
    TRISBbits.TRISB1 = 1;
    // Connect U1TX on RP0
    RPOR0bits.RP0R = 3;
    //The input RP11 is connected to U1RX
    RPINR18bits.U1RXR = 1;

    //ALL ADC pins are rather connected to IOs.
    //The ADC IOs are by default connected to the analog input, if we want to use them as a logical
    //IO, we need to write 1 to the corresponding bit
    AD1PCFGL = 0xFF;

    /*Lock again the PIN remapping for security*/


}
/*-----------------------------------------------------------*/

void vParTestSetLED( unsigned portBASE_TYPE uxLED, signed portBASE_TYPE xValue )
{
unsigned portBASE_TYPE uxLEDBit;

	/* Which port A bit is being modified? */
	uxLEDBit = 1 << uxLED;

	if( xValue )
	{
		/* Turn the LED on. */
		portENTER_CRITICAL();
		{
			uxOutput |= uxLEDBit;
			PORTA = uxOutput;
		}
		portEXIT_CRITICAL();
	}
	else
	{
		/* Turn the LED off. */
		portENTER_CRITICAL();
		{
			uxOutput &= ~uxLEDBit;
			PORTA = uxOutput;
		}
		portEXIT_CRITICAL();
	}
}
/*-----------------------------------------------------------*/

void vParTestToggleLED( unsigned portBASE_TYPE uxLED )
{
unsigned portBASE_TYPE uxLEDBit;

	uxLEDBit = 1 << uxLED;
	portENTER_CRITICAL();
	{
		/* If the LED is already on - turn it off.  If the LED is already
		off, turn it on. */
		if( uxOutput & uxLEDBit )
		{
			uxOutput &= ~uxLEDBit;
			PORTA = uxOutput;
		}
		else
		{
			uxOutput |= uxLEDBit;
			PORTA = uxOutput;
		}
	}

        portEXIT_CRITICAL();
}

