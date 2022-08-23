`timescale 1ps / 1ps
`include "../rtl/risc_v_core.v"

`define TIME_SIM #1000

module tb_top;

risc_v_core risc_v_core_tb (.*);

initial begin
  $dumpvars;
  `TIME_SIM;
  $finish;
end

endmodule
