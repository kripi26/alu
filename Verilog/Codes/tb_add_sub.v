module tb_add_sub;

reg [3:0] A;
reg [3:0] B;
reg M;
wire [3:0] S;
wire C;

add_sub call1(.A(A),.B(B),.M(M),.S(S),.C(C));

initial begin
    $dumpfile("tb_add_sub.vcd");
    $dumpvars(0,tb_add_sub);
end

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"M = %b ",M,"S = %b ",S,"C = %b ",C);
end

initial begin
    #5;
    A = 4'b0001;
    B = 4'b0000;
    M = 0;
    #5;
    A = 4'b0010;
    B = 4'b0000;
    M = 0;
    #5;
    A = 4'b0111;
    B = 4'b0010;
    M = 0;
    #5;
    A = 4'b1100;
    B = 4'b0111;
    M = 1;

end

endmodule