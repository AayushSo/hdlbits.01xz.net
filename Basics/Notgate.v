module top_module( input in, output out );
    always @*
        out= ~in;
endmodule
