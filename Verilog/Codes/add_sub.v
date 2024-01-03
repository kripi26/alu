`include "full_adder.v"

module add_sub(
  input [3:0] A,
  input [3:0] B,
  input M,
  output [3:0] S,
  output C
);

// full_adder 4_bit_adder(
//     .A(A),.B(B),.(C),.(S),.(C_out)
// );


wire B_final_0,B_final_1,B_final_2,B_final_3;
wire C1,C2,C3;

xor(B_final_0,M,B[0]);
xor(B_final_1,M,B[1]);
xor(B_final_2,M,B[2]);
xor(B_final_3,M,B[3]);

full_adder G1(A[0],B_final_0,M,S[0],C1);
full_adder G2(A[1],B_final_1,C1,S[1],C2);
full_adder G3(A[2],B_final_2,C2,S[2],C3);
full_adder G4(A[3],B_final_3,C3,S[3],C);

endmodule
