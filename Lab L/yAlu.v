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
 
