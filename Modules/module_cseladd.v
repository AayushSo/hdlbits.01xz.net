/*
In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. 
You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.
*/

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
  wire w1;
  wire [15:0] q0;
  wire [15:0] q1;
    
  add16 lsb (.a(a[15:0]),.b(b[15:0]), .cin(1'b0),.sum(sum[15:0]),.cout(w1));
  add16 msb0 (.a(a[31:16]),.b(b[31:16]), .cin(1'b0),.sum(q0));
  add16 msb1 (.a(a[31:16]),.b(b[31:16]), .cin(1'b1),.sum(q1));
    
  assign sum[31:16] = w1? q1:q0;
    
endmodule
