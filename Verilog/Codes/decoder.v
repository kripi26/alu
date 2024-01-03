module decoder(A0,A1,D0,D1,D2,D3);
input A0;
input A1;
output D0,D1,D2,D3;
wire t1,t2;
not G1(t1,A0);
not G2(t2,A1);
and G3(D0,t1,t2);
and G4(D1,A0,t2);
and G5(D2,t1,A1);
and G6(D3,A0,A1);
endmodule
