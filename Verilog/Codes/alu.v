`include "decoder.v"
`include "enable.v"
`include "add_sub.v"
`include "comparator.v"
`include "and_logic.v"

module alu(
    input [3:0]A,
    input [3:0]B,
    input [1:0]S,
    output reg [3:0]final,
    output reg final_carry,
    output reg EQ,A_GT_B,B_GT_A
);

wire [3:0]A_out1;
wire [3:0]B_out1;

wire [3:0]A_out2;
wire [3:0]B_out2;

wire [3:0]A_out3;
wire [3:0]B_out3;

wire [3:0]A_out4;
wire [3:0]B_out4;

decoder G1(S[0],S[1],D0,D1,D2,D3);

enable G2(A,B,D0,A_out1,B_out1);
enable G3(A,B,D1,A_out2,B_out2);
enable G4(A,B,D2,A_out3,B_out3);
enable G5(A,B,D3,A_out4,B_out4);

wire [3:0]final1;
wire [3:0]final2;
wire [3:0]final3;
wire final_carry1;
wire final_carry2;
wire EQ1, A_GT_B1,B_GT_A1;

 add_sub G6(A_out1,B_out1,S[0],final1,final_carry1);
 add_sub G7(A_out2,B_out2,S[0],final2,final_carry2);
 comparator G8(A_out3,B_out3,EQ1,A_GT_B1,B_GT_A1);
 and_logic G9(A_out4,B_out4,final3);

always @(*)begin
    if(D0==1)begin
    //   add_sub G6(A_out1,B_out1,S0,final,final_carry);
        final = final1;
        final_carry = final_carry1;
    end else if(D1==1)begin
    //    add_sub G7(A_out2,B_out2,S0,final,final_carry);
         final = final2;
         final_carry = final_carry2;
    end else if(D2==1)begin
    //    comparator G8(A_out3,B_out3,EQ,A_GT_B,B_GT_A);
          EQ = EQ1;
          A_GT_B = A_GT_B1;
          B_GT_A = B_GT_A1;
          
    end else if(D3==1)begin
        // and_logic G9(A_out4,B_out4,final);
        final = final3;
    end
end

endmodule
