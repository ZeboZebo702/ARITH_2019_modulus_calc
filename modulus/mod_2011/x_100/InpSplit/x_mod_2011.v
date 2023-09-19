module x_100_mod_2011(
    input [100:1] X,
    output [11:1] R
    );

wire [24:1] R_temp_1;
wire [17:1] R_temp_2;
wire [12:1] R_temp_3;
reg [11:1]  R_temp;

assign R_temp_1 = X [ 11 : 1 ]  + X [ 22 : 12 ] * 6'b100101 + X [ 33 : 23 ] * 11'b10101011001 + 
X [ 44 : 34 ] * 9'b101111010 + X [ 55 : 45 ] * 11'b11110000000 + X [ 66 : 56 ] * 10'b1010001111 + 
X [ 77 : 67 ] * 7'b1100111 + X [ 88 : 78 ] * 11'b11100001000 + X [ 99 : 89 ] * 8'b11101101 + 
X [ 100 ] * 10'b1011010101 ;

assign R_temp_2 = R_temp_1 [ 11 : 1 ]  + R_temp_1 [ 22 : 12 ] * 6'b100101 + 
R_temp_1 [ 24 : 23 ] * 11'b10101011001 ;

assign R_temp_3 = R_temp_2 [ 11 : 1 ]  + R_temp_2 [ 17 : 12 ] * 6'b100101 ;

always @(R_temp_3)
begin
  if (R_temp_3 >= 11'b11111011011)
    R_temp <= R_temp_3 - 11'b11111011011;
  else
    R_temp <= R_temp_3;
end

assign R = R_temp;

endmodule
