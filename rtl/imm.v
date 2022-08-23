module imms ( // переписать параметризируемым под разную разрядность
  input       [2:0]   Ctrl,
  input       [31:0]  Instruction,
  output  reg [31:0]  Imm,
);

always @ *
  case (Ctrl)
    3'b : Imm = ;
    3'b : Imm = ;
  endcase

endmodule
