module siso(
    input clk,rst,sin,
	 output sout
	 );
    reg q0,q1,q2,q3;

    assign sout = q3;

    always@(posedge clk )begin
        if(!rst)begin 
          q0<=0;q1<=0;q2<=0;q3<=0;
		  end
        else begin
            q0 <= sin;
            q1 <= q0;
            q2 <= q1;
            q3 <= q2;
            
            
        end
    end
endmodule
