module top_module( 
    input a, 
    input b, 
    output out );
  
    always@(a,b) out = a&b;

endmodule
