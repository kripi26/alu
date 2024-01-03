module tb_and;
reg [3:0]A;
reg [3:0]B;
wire [3:0]ans;

and_logic call1(.A(A),.B(B),.ans(ans));

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"ans = %b ",ans);
end

initial begin
    #5;
    A = 4'b0001;
    B = 4'b0000;
    #5;
    A = 4'b0010;
    B = 4'b0000;
    
    #5;
    A = 4'b0111;
    B = 4'b0010;
   
    #5;
    A = 4'b1100;
    B = 4'b0111;
   $finish;

end

endmodule
