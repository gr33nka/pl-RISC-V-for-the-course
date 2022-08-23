module alu #(
  parameter DATA_WIDTH = 32,
  parameter CTRL_WIDTH = 4
) (
  input       [CTRL_WIDTH-1 : 0]  OP,
  input       [DATA_WIDTH-1 : 0]  A,
  input       [DATA_WIDTH-1 : 0]  B,
  output  reg [DATA_WIDTH-1 : 0]  R,
  output  reg                     flag
);

  always @ *
    case (OP)
      
      default:  begin
        R = ;
        flag = ;
      end
    endcase

endmodule 
