module tb_comparator;

reg [3:0]A;
reg [3:0]B;
wire EQ;
wire A_GT_B;
wire B_GT_A;

comparator call1(
    .A(A),
    .B(B),
    .EQ(EQ),
    .A_GT_B(A_GT_B),
    .B_GT_A(B_GT_A)
    );

// initial begin
//     $dumpfile("tb_comparator.vcd");
//     $dumpvars(0,tb_comparator);
// end



initial begin
    #5;
    A = 4'b0000;
    B = 4'b0001;

    #5;
    A = 4'b0011;
    B = 4'b0010;

    #5;
    A = 4'b0100;
    B = 4'b0100;

    $finish;
end

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"EQ = %b ",EQ,"A_GT_B = %b ",A_GT_B,"B_GT_A = %b ",B_GT_A);
end


endmodule