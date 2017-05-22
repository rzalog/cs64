/************************************************************************/
/*																		*/
/*	SSD.cpp		--		Definition for SSD library 	   					*/
/*																		*/
/************************************************************************/
/*	Author:		Eric Marsh												*/
/*	Copyright 2016, Digilent Inc.										*/
/************************************************************************/
/*  File Description:													*/
/*		This file defines functions for the PmodSSD						*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	08/8/2016(EricM): created											*/
/*																		*/
/************************************************************************/


/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "SSD.h"
#include <WProgram.h>

/* ------------------------------------------------------------ */
/*				Timer Definitions								*/
/* ------------------------------------------------------------ */
#define TICKS_PER_SECOND 40000000
volatile uint32_t counter = 0; 
void __attribute__((interrupt)) myISR();
void start_timer_3(uint32_t frequency);

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*        SSD::SSD
**
**        Synopsis:
**				
**        Parameters:
**
**
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**			Class constructor. Performs variables initialization tasks
**
**
*/
SSD::SSD()
{
	for(int i = 0; i < 7; i++){
		pinArray[i] = -1;
	}
}

/* ------------------------------------------------------------ */
/*        SSD::begin
**
**        Synopsis:
**				mySSD.begin(24,25,26,27,32,33,34,35);
**
**        Parameters:
**				int p1 - pin connected to AA
**				int p2 - pin connected to AB
**				int p3 - pin connected to AC
**				int p4 - pin connected to AD
**				int p5 - pin connected to AE
**				int p6 - pin connected to AF
**				int p7 - pin connected to AG
**				int p8 - pin connected to CAT
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				This function initializes SSD pins, and starts the timer.
**
*/
void SSD::begin(int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8)
{
	// Initializes pins
	pinArray[0] = p1;
	pinArray[1] = p2;
	pinArray[2] = p3;
	pinArray[3] = p4;
	pinArray[4] = p5;
	pinArray[5] = p6;
	pinArray[6] = p7;
	pinArray[7] = p8;
	pinMode(pinArray[0], OUTPUT);
	pinMode(pinArray[1], OUTPUT);
	pinMode(pinArray[2], OUTPUT);
	pinMode(pinArray[3], OUTPUT);
	pinMode(pinArray[4], OUTPUT);
	pinMode(pinArray[5], OUTPUT);
	pinMode(pinArray[6], OUTPUT);
	pinMode(pinArray[7], OUTPUT);
	
	Reset();
	
	// Initialize and start timer
	start_timer_3(8000);  /* 8 kHz */
	setIntVector(_TIMER_3_VECTOR, myISR);
	setIntPriority(_TIMER_3_VECTOR, 4, 0);
	clearIntFlag(_TIMER_3_IRQ);
	setIntEnable(_TIMER_3_IRQ);
}

/* ------------------------------------------------------------ */
/*        SSD::DisplayNumber
**
**        Synopsis:
**				mySSD.DisplayNumber(random(99));
**
**        Parameters:
**				int num - The 1 or 2 digit positive number for the PmodSSD to display (0 - 99)
**				long displayTime - How long in nanoseconds this number should be displayed (1000 by default)		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				Display the passed number on the PmodSSD for a set amount of time. The PmodSSD can only display one digit at a time,
**				on the left or right side. But it displays it fast enough so the human eye cant tell. 
**
*/
void SSD::DisplayNumber(int num, long displayTime)
{	
	// can only display numbers between 0 - 99
	if(num < 0 || num > 99){
		return;
	}
	
	// grab current time from timer to start countdown
	long startTimer = counter;
	while(startTimer + displayTime > counter){
		
		// display ones digit on the right side
		DisplaySingleDigit(num % 10, false);
		
		// wait a bit so the digit is actually displayed
		delay(1);
		
		// display tens digit on the left side
		DisplaySingleDigit(num / 10, true);
		
		// wait a bit so the digit is actually displayed
		delay(1);
	}
}

/* ------------------------------------------------------------ */
/*        SSD::DisplaySingleDigit
**
**        Synopsis:
**				mySSD.DisplaySingleDigit(num % 10, false);
**
**        Parameters:
**				int num - the single digit to be displayed
**				bool leftSide - whether this digit should be displayed on the left or right side of PmodSSD.
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				This function displays a digit on the PmodSSD by outputting HIGH or LOW to its 8 pins.
**
*/
void SSD::DisplaySingleDigit(int num, bool leftSide)
{
	// check if PmodSSD should display num on left or right side
	int sideByte = 0;
	if(leftSide == true){
		// adding 128 puts the displayed byte on the left side
		sideByte += 128;
	} 
	
	// match the num to a pin output pattern. HIGH means that segment light will be turned on, LOW means turned off. 
	switch(num){
		case 0: // display a 0
			DisplayByte(63 + sideByte);
			break;
		case 1: // display a 1
			DisplayByte(6 + sideByte);
			break;
		case 2: // display a 2
			DisplayByte(91 + sideByte);
			break;
		case 3: // display a 3
			DisplayByte(79 + sideByte);
			break;
		case 4: // display a 4
			DisplayByte(102 + sideByte);
			break;
		case 5: // display a 5
			DisplayByte(109 + sideByte);
			break;
		case 6: // display a 6
			DisplayByte(125 + sideByte);
			break;
		case 7: // display a 7
			DisplayByte(7 + sideByte);
			break;
		case 8: // display a 8
			DisplayByte(127 + sideByte);
			break;
		case 9: // display a 9
			DisplayByte(111 + sideByte);
			break;
	}
}

/* ------------------------------------------------------------ */
/*        SSD::DisplayArrayOfBytes
**
**        Synopsis:
**				mySSD.DisplayArrayOfBytes(digilentWords, 5000);
**
**        Parameters:
**				int ByteArray[] - an array of bytes to be displayed on the SSD. Must be 0 - 255
**				long displayTime - How long in nanoseconds this number should be displayed (1000 by default)		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				Display an array of bytes on the pmodSSD. 
**
*/
void SSD::DisplayArrayOfBytes(int ByteArray[], long displayTime)
{
	// grab current time from timer to start countdown
	long startTimer;
	int i = 0;
	while(ByteArray[i] != -1){
		startTimer = counter;
		while(startTimer + displayTime > counter){
			DisplayByte(ByteArray[i]);
			// wait a bit
			
			DisplayByte(ByteArray[i+1]);
			// wait a bit
		}
		i += 2;
	}
}

/* ------------------------------------------------------------ */
/*        SSD::DisplayByte
**
**        Synopsis:
**				mySSD.DisplayByte(digilentWords, 5000);
**
**        Parameters:
**				int byte - Byte to be displayed on SSD. Must be 0 - 255		
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				Display a byte on SSD. This function walks through each bit in the byte. 
**				Each bit in a byte tells the SSD which segments to light up. 
**				Segment A is 1, B is 2, C is 4, D is 8, E is 16, F is 32, G is 64. 128 is the digit selection pin. 
**					With a byte lower than 128, it will be displayed on the right. Otherwise, its displayed on the left.
**				For example, to display a 3, segment A, B, C, D, and G are used. So add up 1 + 2 + 4 + 8 + 64 = 79. 
**					Add 128 to display it on the left, else it will be on the right.
**
*/
void SSD::DisplayByte(int byte)
{
	if(byte < 0 || byte > 255){
		return;
	}
	int mask = 1 << (7);
	for(int x = 7; x >= 0; x--){
		if( (byte & mask) == 0 ){
			digitalWrite(pinArray[x], LOW);
		}else{
			digitalWrite(pinArray[x], HIGH);
		}
		mask  >>= 1;
	}
   delay(1);
}


/* ------------------------------------------------------------ */
/*        SSD::Reset
**
**        Synopsis:
**				mySSD.Reset();
**
**        Parameters:
**				None
**
**        Return Values:
**                void 
**
**        Errors:
**
**
**        Description:
**				Turn off all segment lights so that PmodSSD displays nothing.
**
*/
void SSD::Reset()
{
	// set all right side segments to be turned off
	digitalWrite(pinArray[7], LOW);
	for(int i = 0; i < 7; i++){
		digitalWrite(pinArray[i], LOW);
	}
	// set all left side segments to be turned off
	digitalWrite(pinArray[7], HIGH);
	for(int i = 0; i < 7; i++){
		digitalWrite(pinArray[i], LOW);
	}
}

/* ------------------------------------------------------------ */
/*				Timer Procedures								*/
/* ------------------------------------------------------------ */
/* Define the Interrupt Service Routine (ISR) */
void __attribute__((interrupt)) myISR() 
{
	counter++;
	clearIntFlag(_TIMER_3_IRQ);
}

/* Initialize timer */
void start_timer_3(uint32_t frequency) 
{
	uint32_t period;  
	period = TICKS_PER_SECOND / frequency;
	T3CONCLR = 0x8000;        /* Turn the timer off */
	T3CON = 0;        		/* Set the prescaler  */
	TMR3 = 0;                 /* Clear the counter  */
	PR3 = period;             /* Set the period     */
	T3CONSET = 0x8000;        /* Turn the timer on  */
} 

