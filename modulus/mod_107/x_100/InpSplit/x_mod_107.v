module x_100_mod_107	(
    input [100:1] X,
    output [7:1] R
    );

wire [17:1] R_temp_1;
wire [12:1] R_temp_2;
wire [10:1] R_temp_3;
wire [8:1] R_temp_4;
reg [7:1]  R_temp;

assign R_temp_1 = X [ 7 : 1 ]  + X [ 14 : 8 ] * 5'b10101 + X [ 21 : 15 ] * 4'b1101 + X [ 28 : 22 ] * 6'b111011 + 
		  X [ 35 : 29 ] * 6'b111110 + X [ 42 : 36 ] * 5'b10010 + X [ 49 : 43 ] * 6'b111001 + 
		  X [ 56 : 50 ] * 5'b10100 + X [ 63 : 57 ] * 7'b1100011 + X [ 70 : 64 ] * 6'b101110 + 
		  X [ 77 : 71 ] * 2'b11 + X [ 84 : 78 ] * 6'b111111 + X [ 91 : 85 ] * 6'b100111 + 
		  X [ 98 : 92 ] * 7'b1000110 + X [ 100 : 99 ] * 7'b1001111 ;

assign R_temp_2 = R_temp_1 [ 7 : 1 ]  + R_temp_1 [ 14 : 8 ] * 5'b10101 + R_temp_1 [ 17 : 15 ] * 4'b1101 ;

assign R_temp_3 = R_temp_2 [ 7 : 1 ]  + R_temp_2 [ 12 : 8 ] * 5'b10101 ;

assign R_temp_4 = R_temp_3 [ 7 : 1 ]  + R_temp_3 [ 10 : 8 ] * 5'b10101;

always @(R_temp_4)
begin
  if (R_temp_4 >= 7'b1101011)
    R_temp <= R_temp_4 - 7'b1101011;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule
