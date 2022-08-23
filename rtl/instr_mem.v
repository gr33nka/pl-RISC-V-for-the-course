module instr_mem (
  parameter DEPTH = 64,
  parameter WIDTH = 32,
  parameter WIDTH_ADR = 32,
  
  parameter DEPTH_SIZE = $clog2(DEPTH)
) (
  input   [WIDTH_ADR-1 : 0] A,
  output  [WIDTH-1     : 0] Instruction
);


  reg [WIDTH-1 : 0] ram [0 : DEPTH-1];
  initial $readmemh ("prog.txt", ram);

  assign Instruction = ram [A[DEPTH_SIZE-1 : 0]];


endmodule
