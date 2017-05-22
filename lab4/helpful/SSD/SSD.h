/************************************************************************/
/*																		*/
/*	SSD.h	--	Declaration for SSD library 	    					*/
/*																		*/
/************************************************************************/
/*	Author:		Eric Marsh												*/
/*	Copyright 2016, Digilent Inc.										*/
/************************************************************************/
/*  File Description:													*/
/*	This file declares the SSD library functions and the constants	    */
/*	involved.															*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	8/8/2016(EricM): created											*/
/*																		*/
/************************************************************************/
#if !defined(SSD_H)
#define SSD_H

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <inttypes.h>
#include <WProgram.h>

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

class SSD {
private: 
	int pinArray[8];
	long digitCount;
public:
	SSD ();
	void begin(int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8);
	void DisplayNumber(int num, long displayTime = 1000); // default wait time, 0.001 seconds
	void DisplaySingleDigit(int num, bool leftSide);
	void DisplayArrayOfBytes(int ByteArray[], long displayTime = 1000);
	void DisplayByte(int byte);
	void Reset(void);
};

#endif