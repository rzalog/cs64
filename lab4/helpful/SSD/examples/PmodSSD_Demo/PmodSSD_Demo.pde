/************************************************************************/
/*                                                                      */
/*    PmodSSD Demo Project                                              */
/*                                                                      */
/************************************************************************/
/*  Author: Eric Marsh                                                  */
/*  Copyright 2016, Digilent Inc.                                       */
/************************************************************************/
/*  File Description:                                                   */
/*                                                                      */
/* This file implements a simple demo application that demonstrates     */
/* how to setup and use the PmodSSD.                                    */
/*                                                                      */
/*  Functionality:                                                      */
/*                                                                      */
/* In the setup() function, the PmodSSD is initialized through          */
/* calling the SSD library.                                             */
/*                                                                      */
/*                                                                      */
/* In the loop() function, the application outputs numbers 0 - 99 to    */ 
/* PmodSSD                                                              */
/*                                                                      */
/* This demo assumes the PmodSSD is plugged into the top rows of MX3    */
/* ports JD and JE.                                                     */
/*                                                                      */
/*  Required Hardware:                                                  */
/*    1. chipKit Mx3cK                                                  */
/*    2. PmodSSD                                                        */
/*                                                                      */
/************************************************************************/
/*  Revision History:                                                   */
/*                                                                      */
/*  8/8/2016(EricM): Created                                            */
/*                                                                      */
/*                                                                      */
/************************************************************************/

/* -------------------------------------------------------------------- */
/*            Include File Definitions                                  */
/* -------------------------------------------------------------------- */
#include "SSD.h"
#include <WProgram.h>

/* -------------------------------------------------------------------- */
/*                Global Variables                                      */
/* -------------------------------------------------------------------- */
// pmodSSD object variable
SSD mySSD;

// These arrays contain bytes, each binarry byte tells the SSD which segments to light up. 
// Segment A is 1, B is 2, C is 4, D is 8, E is 16, F is 32, G is 64. 128 is the digit selection pin. With a byte lower than 128, it will be displayed on the right. Otherwise, its displayed on the left.
// For example, to display a 3, segment A, B, C, D, and G are used. So add up 1 + 2 + 4 + 8 + 64 = 79. Add 128 to display it on the left, else it will be on the right.
int digilentWords[19] = {128, 94, 222, 48, 176, 111, 239, 48, 176, 56, 184, 121, 249, 84, 212, 120, 248, 0, -1};
int cubeAnimation[9] = {227, 0, 128, 99, 128, 92, 220, 0, -1};
int circleAnimation[43] = {129, 1, 128, 3, 128, 6, 128, 12, 136, 8, 152, 0, 176, 0, -1};
int waveAnimation[25] = {128, 0, 128, 6, 128, 79, 128, 127, 134, 127, 207, 127, 255, 127, 255, 121, 255, 48, 255, 0, 249, 0, 176, 0, -1};
int snakeAnimation[43] = {0, 161, 0, 176, 16, 136, 48, 128, 33, 128, 3, 128, 6, 128, 12, 128, 8, 132, 0, 134, 0, 131, 0, 224, 64, 192, 68, 128, 8, 136, 0, 152, 0, 208, 64, 192, 66, 128, 3, 128, 1, 129, -1};
int fourleafcloverAnimation[33] = {192, 0, 160, 0, 129, 0, 130, 0, 132, 0, 136, 0, 144, 0, 192, 0,64, 0, 4, 0, 8, 0, 16, 0, 64, 0, 32, 0, 1, 0, 2, 0, -1};                 


/* -------------------------------------------------------------------- */
/*                Procedure Definitions                                 */
/* -------------------------------------------------------------------- */
// setup
void setup()
{
  // pass the pins connecting to the PmodSSD. 
  mySSD.begin(24,25,26,27,32,33,34,35); 

  // the second parameter tells the SSD how long to show a single byte for.
  mySSD.DisplayArrayOfBytes(digilentWords, 4000);
}

// loop
void loop()
{
    
    CountDown();
    mySSD.DisplayArrayOfBytes(snakeAnimation);
    for(int i = 0; i < 2; i++){
      mySSD.DisplayArrayOfBytes(circleAnimation);
    }
    for(int i = 0; i < 3; i++){
      mySSD.DisplayArrayOfBytes(fourleafcloverAnimation, 1000);
    }
    for(int i = 0; i < 3; i++){
      mySSD.DisplayArrayOfBytes(cubeAnimation);
    }
    for(int i = 0; i < 2; i++){
      mySSD.DisplayArrayOfBytes(waveAnimation);
    }
}

// display numbers 99 to 0
void CountDown(){
  for(int i = 99; i >= 0; i--){
    mySSD.DisplayNumber(i);
  }
} 