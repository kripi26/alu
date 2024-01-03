module tb_alu;

reg [3:0]A;
reg [3:0]B;
reg [1:0]S;
wire [3:0]final;
wire final_carry;
wire EQ,A_GT_B,B_GT_A;

alu call1(.A(A),.B(B),.S(S),.final(final),.final_carry(final_carry),.EQ(EQ),.A_GT_B(A_GT_B),.B_GT_A(B_GT_A));

initial begin
    $dumpfile("tb_alu.vcd");
    $dumpvars(0,tb_alu);
end

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"S = %b ",S,"final = %b ",final,"final_carry = %b ",final_carry,"EQ = %b ",EQ,"A_GT_B = %b ",A_GT_B,"B_GT_A = %b ",B_GT_A);
end
initial begin
    #5;
    S = 2'b00;
    A = 4'b0111;
    B = 4'b1000;
    #5;
    S = 2'b01;
    A = 4'b0111;
    B = 4'b1000;
    #5;
    S = 2'b10;
    A = 4'b0111;
    B = 4'b1000;
    #5;
    S = 2'b11;
    A = 4'b0111;
    B = 4'b1000;
    $finish;

end
endmodule