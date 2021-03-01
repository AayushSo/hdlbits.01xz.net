/*
An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to inverting the input then adding 1. 
The net result is a circuit that can do two operations: (a + b + 0) and (a + ~b + 1). 
*/

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
  wire w1;
  wire [31:0] bt;
  
  assign bt = b ^{32{sub}};
  
  add16 add_blk (.a(a[15:0]),.b(bt[15:0]), .cin(sub),.sum(sum[15:0]),.cout(w1));
  add16 sub_blk (.a(a[31:16]),.b(bt[31:16]), .cin(w1),.sum(sum[31:16]));
    
endmodule
