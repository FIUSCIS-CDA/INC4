module testbench();

reg[3:0] A;

wire[3:0] S;

INC4 myINC(A[3], A[2], A[1], A[0], S[3], S[2], S[1], S[0]);

initial begin
$display("Testing A=9");
A=9;   #10; 
if (S !== A+1) begin
           $display("Error with A=%d: Should also be %d but got %d", A, A+4, S); $stop;
end
$display("All tests passed.");
end

endmodule
