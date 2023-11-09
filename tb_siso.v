`timescale 1ns/1ps
module tb_siso;
    reg clk,rst,sin;
    wire sout;
    integer i;

    siso u0(clk,rst,sin,sout);

    always
        #10 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        sin = 1'b0;
    end

    always begin
        for(i=1;i<10;i=i+1)begin
            #20 sin = i;
        end
    end
endmodule
