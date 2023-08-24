module yMux1(z, a, b, c);
output z;
input a, b, c;
wire notC, upper, lower;

not my_not(notC, c);
and upperAnd(upper, a, notC);
and lowerAnd(lower, c, b);
or my_or(z, upper, lower);

endmodule

module yMux(z,a,b,c);
parameter SIZE = 2;
 output [SIZE-1:0] z;
 input [SIZE-1:0] a , b;
 input c;
 yMux1 mine[SIZE-1:0](z,a,b,c);
 
endmodule
module yMux4to1(z,a0,a1,a2,a3,c);
 parameter SIZE = 2;
 output [SIZE-1:0] z; 
 input [SIZE-1:0] a0,a1,a2,a3;
 input[1:0] c;
 wire [SIZE-1:0] zLo, zHi;
 yMux #(SIZE) lo(zLo,a0,a1,c[0]);
 yMux #(SIZE) hi(zHi, a2,a3,c[0]);
 yMux #(SIZE) final(z,zLo,zHi,c[1]);
endmodule

module yAdder1(z,cout, a, b , cin);
 output z, cout;
 input a, b , cin;
 xor left_xor(tmp,a,b);
 xor right_xor(z,cin,tmp);
 and left_and(outL, a,b);
 and right_and(outR, tmp,cin);
 or my_or (cout,outR,outL);
endmodule

/*module yAdder1(z,cout, a, b , cin);
 output z, cout;
 input a, b , cin;
 xor left_xor(tmp,a,b);
 xor right_xor(z,cin,tmp);
 and left_and(outL, a,b);
 and right_and(outR, tmp,cin);
 or my_or (cout,outR,outL);
endmodule*/
module yAdder(z,cout,a,b,cin);
 // outputs
 output[31:0] z;
 output cout;

 //inputs
 input [31:0] a,b;
 input cin;
 
 //interconnects
 wire[31:0] in, out;
 

// yAdder1 is defined as yAdder.v
 yAdder mine[31:0]( z, out , a,b,in);
 

 assign in[0]  = cin;
 assign in[31:1] =out [30:0];
 assign cout = out[31];
endmodule 
module yArith(z,cout, a,b,ctrl);
 // add if ctrl =0, sub if ctrl =1
 output [31:0] z;
 output cout;
 input [31:0] a,b;
 input ctrl;
 wire [31:0] notB,tmp;
 wire cin;
 
 // instantiate compnents and connect them
 // just 4 lines of code
endmodule
module yAlu(z,ex,a,b,op);
 // op =000: z=a AND b, op = 001:a|b, op=010: z=a+b, op=110: z=a-b;
 input[31:0] a,b;
 input [2:0] op;
 output[31:0] z;
 output ex;
 

 wire [31:0] zAnd,zOr,zArith,slt;
 
 assign slt =0; // not supported
 assign ex=0; // not supported
 // instantiate compnents and connect them
 // just 4 lines of code

endmodule

module yIF(ins, PCp4, PCin, clk);
output [31:0], ins, PCp4;
input [31:0] PCin;
input clk;
// build and connect the circuit
endmodule
 
