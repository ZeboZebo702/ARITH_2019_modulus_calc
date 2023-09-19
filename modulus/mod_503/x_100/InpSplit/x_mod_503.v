module x_100_mod_503(
    input [100:1] X,
    output [9:1] R
    );

wire [21:1] R_temp_1;
wire [13:1] R_temp_2;
wire [10:1] R_temp_3;
reg [9:1]  R_temp;

assign R_temp_1 = X [ 9 : 1 ]  + X [ 18 : 10 ] * 4'b1001 + X [ 27 : 19 ] * 7'b1010001 + 
X [ 36 : 28 ] * 8'b11100010 + X [ 45 : 37 ] * 5'b10110 + X [ 54 : 46 ] * 8'b11000110 + 
X [ 63 : 55 ] * 9'b100010001 + X [ 72 : 64 ] * 9'b110111101 + X [ 81 : 73 ] * 9'b111100100 + 
X [ 90 : 82 ] * 9'b101001100 + X [ 99 : 91 ] * 9'b111011001 + X [ 100 ] * 8'b11101001 ;

assign R_temp_2 = R_temp_1 [ 9 : 1 ]  + R_temp_1 [ 18 : 10 ] * 4'b1001 + R_temp_1 [ 21 : 19 ] * 7'b1010001 ;

assign R_temp_3 = R_temp_2 [ 9 : 1 ]  + R_temp_2 [ 13 : 10 ] * 4'b1001 ;

always @(R_temp_3)
begin
  if (R_temp_3 >= 9'b111110111)
    R_temp <= R_temp_3 - 9'b111110111;
  else
    R_temp <= R_temp_3;
end

assign R = R_temp;

endmodule
