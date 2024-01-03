module and_logic(
    input [3:0]A,
    input [3:0]B,
    output [3:0]ans
);

and(ans[0],A[0],B[0]);
and(ans[1],A[1],B[1]);
and(ans[2],A[2],B[2]);
and(ans[3],A[3],B[3]);

endmodule