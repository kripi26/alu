module enable(
  input [3:0] A,
  input [3:0] B,
  input en,
  output [3:0] A_out,
  output [3:0] B_out
);

  and G1(A_out[0], A[0], en);
  and G2(A_out[1], A[1], en);
  and G3(A_out[2], A[2], en);
  and G4(A_out[3], A[3], en);
  and G5(B_out[0], B[0], en);
  and G6(B_out[1], B[1], en);
  and G7(B_out[2], B[2], en);
  and G8(B_out[3], B[3], en);

endmodule
