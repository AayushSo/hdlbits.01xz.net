module top_module( 
    input a,b,c,
    output w,x,y,z );
    
    assign w=a;
    assign {y,x} = {b,b};
    assign z = c;

endmodule
