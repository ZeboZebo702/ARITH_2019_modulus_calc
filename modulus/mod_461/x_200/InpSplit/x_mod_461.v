module x_200_mod_461(
    input [200:1] X,
    output [9:1] R
    );

wire [21:1] R_temp_1;
wire [15:1] R_temp_2;
wire [12:1] R_temp_3;
wire [10:1] R_temp_4;
reg [9:1]  R_temp;

assign R_temp_1 = X [ 9 : 1 ]  + X [ 18 : 10 ] * 6'b110011 + X [ 27 : 19 ] * 9'b100101000 + X [ 36 : 28 ] * 9'b101011000 + X [ 45 : 37 ] * 5'b11010 + X [ 54 : 46 ] * 9'b110010100 + X [ 63 : 55 ] * 9'b101000000 + X [ 72 : 64 ] * 8'b10111001 + X [ 81 : 73 ] * 8'b11010111 + X [ 90 : 82 ] * 9'b101101010 + X [ 99 : 91 ] * 5'b10110 + X [ 108 : 100 ] * 8'b11001000 + X [ 117 : 109 ] * 6'b111010 + X [ 126 : 118 ] * 8'b11000000 + X [ 135 : 127 ] * 7'b1101111 + X [ 144 : 136 ] * 8'b10000001 + X [ 153 : 145 ] * 7'b1111101 + X [ 162 : 154 ] * 9'b101111110 + X [ 171 : 163 ] * 7'b1111000 + X [ 180 : 172 ] * 7'b1111111 + X [ 189 : 181 ] * 5'b10111 + X [ 198 : 190 ] * 8'b11111011 + X [ 200 : 199 ] * 9'b101100010 ;

assign R_temp_2 = R_temp_1 [ 9 : 1 ]  + R_temp_1 [ 18 : 10 ] * 6'b110011 + R_temp_1 [ 21 : 19 ] * 9'b100101000 ;

assign R_temp_3 = R_temp_2 [ 9 : 1 ]  + R_temp_2 [ 15 : 10 ] * 6'b110011 ;

assign R_temp_4 = R_temp_3 [ 9 : 1 ]  + R_temp_3 [ 12 : 10 ] * 6'b110011 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 9'b111001101)
    R_temp <= R_temp_4 - 9'b111001101;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule
