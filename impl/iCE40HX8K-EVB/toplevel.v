`timescale 1ns / 1ps

module toplevel(
    input   CLK,
    input   BUT1,
    input   BUT2,
    output  LED1,
    output  LED2
  );

  assign LED2 = "0";

  wire io_mainClk;
 
  // Use PLL to downclock external clock.
  toplevel_pll toplevel_pll_inst(.REFERENCECLK(CLK),
                                 .PLLOUTCORE(io_mainClk),
                                 .PLLOUTGLOBAL(),
                                 .RESET(1'b1));

  MyTopLevel MyTopLevelInst
  (
   .io_cond0(BUT1),
   .io_cond1(BUT2),
   .io_flag(LED1),
   .reset(1'b0),
   .clk (io_mainClk),   
  );

endmodule
