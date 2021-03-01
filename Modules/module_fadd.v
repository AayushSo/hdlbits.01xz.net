/*
In this exercise, you will create a circuit with two levels of hierarchy. 
Your top_module will instantiate two copies of add16 (provided), each of which will instantiate 16 copies of add1 (which you must write). 
Thus, you must write two modules: top_module and add1.

Like module_add, you are given a module add16 that performs a 16-bit addition. 
You must instantiate two of them to create a 32-bit adder. 
One add16 module computes the lower 16 bits of the addition result, while the second add16 module computes the upper 16 bits of the result. 
Your 32-bit adder does not need to handle carry-in (assume 0) or carry-out (ignored).
*/


module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  
  wire w1;
 
  add16 lsb (.a(a[15:0]),.b(b[15:0]), .cin(1'b0),.sum(sum[15:0]),.cout(w1));
  add16 msb (.a(a[31:16]),.b(b[31:16]), .cin(w1),.sum(sum[31:16]));

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
// Full adder module here
  assign {cout,sum} = a+b+cin;

endmodule
