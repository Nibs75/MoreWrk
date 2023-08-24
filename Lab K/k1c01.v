// Testbench
module testbench;
// inputs device under test (DUT) reg, outputs wire reg clk, reset;
  reg clk, reset;
  reg [31:0] instruction;
  initial begin
  $display("Time: " , $time, ", Instruction: ", instruction);
  #10 instruction = 10;
  $display("Time: %5d Instruction: %16d" , $time,  instruction);
  #10 instruction =20;
  $display("Time: %5d Instruction: %16b" , $time,  instruction);
  #10 instruction = 30;
  $display("Time: %5d Instruction: %16h" , $time,  instruction);
  $finish;
  end
endmodule