module labK;
reg a,b,flag; //reg without size means 1-bit
wire tmp, z;
// tmp is an output; b is an input
not my_not(tmp,b);
// z output; a, tmp are inputs
and my_and (z, a ,tmp);
initial
begin
 
  flag=$value$plusargs("a=%b",a);
  flag=$value$plusargs("b=%b",b);
  $finish;
end
endmodule
