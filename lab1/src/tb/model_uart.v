`timescale 1ns / 1ps

module model_uart(/*AUTOARG*/
   // Outputs
   TX,
   // Inputs
   RX
   );

   output TX;
   input  RX;

   parameter baud    = 115200;
   parameter bittime = 1000000000/baud;
   parameter name    = "UART0";
   
   reg [7:0] rxData;
   event     evBit;
   event     evByte;
   event     evTxBit;
   event     evTxByte;
   reg       TX;

	reg [47:0] rxBuffer;
	reg [7:0] rxCounter;
	
	integer printRX;

   initial
     begin
        TX = 1'b1;
		  rxBuffer = 48'd0;
		  rxCounter = 'd0;
     end
   
   always @ (negedge RX)
     begin
        rxData[7:0] = 8'h0;
        #(0.5*bittime);
        repeat (8)
          begin
             #bittime ->evBit;
             //rxData[7:0] = {rxData[6:0],RX};
             rxData[7:0] = {RX,rxData[7:1]};
          end
        ->evByte;
        //$display ("%d %s Received byte %02x (%s)", $stime, name, rxData, rxData);
		  
		  rxBuffer[rxCounter] = rxData;
		  
			if (rxBuffer[47:40] == 8'd13) begin
				printRX = rxBuffer[31:0];
				$display("%d %s Received data %08x (%s)", $stime, name, printRX, printRX);
				
				rxBuffer = 'd0;
				rxCounter = 'd0;
			end
			
			$display("%d %s Received data %08x (%s)", $stime, name, rxBuffer[rxCounter +: 7], rxBuffer[rxCounter +: 7]);
			
			rxCounter = rxCounter + 8'd8;

     end

   task tskRxData;
      output [7:0] data;
      begin
         @(evByte);
         data = rxData;
      end
   endtask // for
      
   task tskTxData;
      input [7:0] data;
      reg [9:0]   tmp;
      integer     i;
      begin
         tmp = {1'b1, data[7:0], 1'b0};
         for (i=0;i<10;i=i+1)
           begin
              TX = tmp[i];
              #bittime;
              ->evTxBit;
           end
         ->evTxByte;
      end
   endtask // tskTxData
   
endmodule // model_uart
