`timescale 1ns / 1ps

module toplevel(
    input   CLK,
    input   BUT1,
    input   BUT2,
    output  LED1,
    output  LED2 
  );
   
  assign LED2 = "0";
   
   
  wire     io_mainClk;

  SB_GB mainClkBuffer (
    .USER_SIGNAL_TO_GLOBAL_BUFFER (io_J3),
    .GLOBAL_BUFFER_OUTPUT ( io_mainClk)
  );

  MyTopLevel MyTopLevelInst
  (
   .io_cond0(1'b1),
   .io_cond1(1'b1),
   .io_flag(LED1),
   .reset(1'b0),
   .clk (io_mainClk),   
  );
  		
endmodule
