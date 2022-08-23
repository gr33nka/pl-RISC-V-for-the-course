module data_mem #(
  parameter WIDTH = 32,
  parameter DEPTH = 32,
  parameter WIDTH_ADR = 32,

  parameter DEPTH_SIZE = $clog2(DEPTH)  
) (
  input                 CLK,
  input   [WIDTH-1 : 0] A,
  output  [WIDTH-1 : 0] RD,
  input                 WE,
  input   [WIDTH-1 : 0] WD
);


  reg [WIDTH-1 : 0] ram [0 : DEPTH-1];
  initial $readmemh("data.txt", ram);

  assign RD = ram[A[DEPTH_SIZE-1 : 0]];

  always @ (posedge CLK)
    if (WE) ram[A[DEPTH_SIZE-1 : 0]] = WD;


endmodule
