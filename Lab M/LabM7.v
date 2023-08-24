module labM;
reg[31:0] PCin;
reg clk;
wire [31:0] ins, PCp4;

yIF myIF(ins,PCp4, PCin,clk);
initial 
begin
//-----------------Entry Point
PCin = 16'h28;
//-----------------Run Program
repeat(11)
begin
//-----------------Fetch on ins
clk = 1; #1;
//-----------------Execute on ins
clk = 0;#1;
//-----------------View Results
$display("instruction = %h", ins);
end
$finish;
end
endmodule
