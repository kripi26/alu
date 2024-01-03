module comparator(input [3:0] A,input [3:0] B,output EQ,output A_GT_B,output B_GT_A);

wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20;

xnor(t1,A[3],B[3]);
xnor(t2,A[2],B[2]);
xnor(t3,A[1],B[1]);
xnor(t4,A[0],B[0]);
and(EQ,t1,t2,t3,t4);

not(t5,B[3]);
and(t9,A[3],t5);
not(t6,B[2]);
and(t10,t1,t6,A[2]);
not(t7,B[1]);
and(t11,t1,t2,t7,A[1]);
not(t8,B[0]);
and(t12,t1,t2,t3,t8,A[0]);
or(A_GT_B,t9,t10,t11,t12);

not(t13,A[3]);
and(t17,B[3],t13);
not(t14,A[2]);
and(t18,t1,t14,B[2]);
not(t15,A[1]);
and(t19,t1,t2,t15,B[1]);
not(t16,A[0]);
and(t20,t1,t2,t3,t16,B[0]);
or(B_GT_A,t17,t18,t19,t20);

endmodule