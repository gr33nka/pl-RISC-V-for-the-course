module reg_file #(
  parameter WIDTH_REG = 32
) (
  input                     CLK,
  input   [4 : 0]           A1,
  input   [4 : 0]           A2,
  input   [4 : 0]           A3,
  output  [WIDTH_REG-1 : 0] RD1,
  output  [WIDTH_REG-1 : 0] RD2,
  input   [WIDTH_REG-1 : 0] WD3,
  input                     WE3
);

  reg [WIDTH_REG-1 : 0] ram [0 : 31];

  assign RD1 = |A1 ? ram[A1] : {WIDTH_REG{1'b0}};
  assign RD2 = |A2 ? ram[A2] : {WIDTH_REG{1'b0}};

  always @ (posedge CKL)
    if (WE3) ram[A3] <= WD3;

endmodule
