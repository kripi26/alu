module tb_decoder;

reg A0,A1;
wire D0,D1,D2,D3;

decoder call1(.A0(A0),.A1(A1),.D0(D0),.D1(D1),.D2(D2),.D3(D3));

initial begin
    $dumpfile("tb_decoder.vcd");
    $dumpvars(0,tb_decoder);
end

initial begin
    $monitor("A1 = %b ",A1,"A0 = %b ",A0,"D0 = %b ",D0,"D1 = %b ",D1,"D2 = %b ",D2,"D3 = %b ",D3);
end

initial begin
    {A0,A1} = 2'b00;
    #5;
    {A0,A1} = 2'b01;
    #5;
    {A0,A1} = 2'b10;
    #5;
    {A0,A1} = 2'b11;
    #5;
    $finish;
end
endmodule