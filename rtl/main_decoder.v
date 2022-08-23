module main_decoder (
  input   [31:0]  Instruction,
  output  [ : ]   some
);


  wire [] opcode;
  wire [] func3;
  wire [] func7;


  assign opcode = Instruction[];
  assign func3 = Instruction[];
  assign func7 = Instruction[];
  
  always @ *
    case ()

      default: begin

      end
    endcase


endmodule
