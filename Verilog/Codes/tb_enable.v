module tb_enable;

reg [3:0] A;
reg [3:0] B;
reg en;
wire [3:0] A_out;
wire [3:0] B_out;

enable call1(.A(A),.B(B),.en(en),.A_out(A_out),.B_out(B_out));

initial begin
    $dumpfile("tb_enable.vcd");
    $dumpvars(0,tb_enable);
end

initial begin
    $monitor("A = %b ",A,"B = %b ",B,"en = %b ",en,"A_out = %b ",A_out,"B_out = %b ",B_out);
end

initial begin
    #5;
    A = 0;
    B = 0;
    en = 0;
    #5;
    en = 0;
    A = 4'b1111;
    B = 4'b1111;

    #5;
    en = 1;
    A = 4'b1111;
    B = 4'b1111;
    
    #5;
    $finish;
end
endmodule