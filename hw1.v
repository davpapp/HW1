module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,    // (~A)*(~B)
  output AnanB,      // ~(AB)
  output nAornB,     // (~A)+(~B)
  output AnorB       // ~(A+B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  nand nandgate(AnanB, A, B);
  or orgate(nAornB, nA, nB);
  nor norgate(AnorB, A, B);

endmodule