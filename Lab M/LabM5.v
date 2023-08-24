module labM;
reg clk, read, write;
reg [31:0] address, memIn; 
wire [31:0] memOut;

mem data(memOut, address, memIn, clk, read, write); 

initial
begin
    address = 16'h28; write = 0; read = 1; // reading is easy and writing too , prof says its not :(
    repeat (11)//11 repeats wow
    begin
        #4 $display("Address %d contains %h", address, memOut); 
        address = address + 4;
    end

    $finish;
end



always
begin
		#4 clk = ~clk; // within 4 units of time, counts between 0 and 1
end


endmodule
