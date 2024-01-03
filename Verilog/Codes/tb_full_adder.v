module tb_full_adder;

reg A,B,C;
wire S,C_out;

full_adder call1(.A(A),.B(B),.C(C),.S(S),.C_out(C_out));

initial begin
    $dumpfile("tb_full_adder.vcd");
    $dumpvars(0,tb_full_adder);
end

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"C = %b ",C,"S = %b ",S,"C_out = %b ",C_out);
end

initial begin
    {A,B,C} = 3'b000;
    #5;
    {A,B,C} = 3'b001;
    #5;
    {A,B,C} = 3'b010;
    #5;
    {A,B,C} = 3'b100;
    #5;
    {A,B,C} = 3'b101;
    #5;
    {A,B,C} = 3'b110;
    #5;
    {A,B,C} = 3'b111;
    #5;

    $finish;
end
endmodule