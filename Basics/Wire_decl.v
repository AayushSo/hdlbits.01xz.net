`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
  
	  wire int1 = a&b;
    wire int2 = c&d;
    wire int3 = int1 | int2;
    
    assign out = int3;
    assign out_n = !int3;
    
endmodule
