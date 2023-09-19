module x_300_mod_997(
    input [300:1] X,
    output [10:1] R
    );

wire [24:1] R_temp_1;
wire [16:1] R_temp_2;
wire [11:1] R_temp_3;
reg [10:1]  R_temp;

assign R_temp_1 = X [ 10 : 1 ]  + X [ 20 : 11 ] * 5'b11011 + X [ 30 : 21 ] * 10'b1011011001 + 
X [ 40 : 31 ] * 10'b1011100100 + X [ 50 : 41 ] * 6'b101000 + X [ 60 : 51 ] * 7'b1010011 + 
X [ 70 : 61 ] * 8'b11110111 + X [ 80 : 71 ] * 10'b1010101111 + X [ 90 : 81 ] * 10'b1001011011 + 
X [ 100 : 91 ] * 9'b101001001 + X [ 110 : 101 ] * 10'b1110001011 + X [ 120 : 111 ] * 10'b1000110001 + 
X [ 130 : 121 ] * 8'b11000000 + X [ 140 : 131 ] * 8'b11000111 + X [ 150 : 141 ] * 9'b110000100 + 
X [ 160 : 151 ] * 9'b111111010 + X [ 170 : 161 ] * 10'b1010111101 + X [ 180 : 171 ] * 10'b1111010101 + 
X [ 190 : 181 ] * 10'b1000110101 + X [ 200 : 191 ] * 9'b100101100 + X [ 210 : 201 ] * 7'b1111100 + 
X [ 220 : 211 ] * 9'b101100101 + X [ 230 : 221 ] * 10'b1010011010 + X [ 240 : 231 ] * 6'b100100 + 
X [ 250 : 241 ] * 10'b1111001100 + X [ 260 : 251 ] * 9'b101000010 + X [ 270 : 261 ] * 10'b1011001110 + 
X [ 280 : 271 ] * 9'b110111011 + X [ 290 : 281 ] * 10'b1111100010 + X [ 300 : 291 ] * 10'b1110010100 ;

assign R_temp_2 = R_temp_1 [ 10 : 1 ]  + R_temp_1 [ 20 : 11 ] * 5'b11011 + R_temp_1 [ 24 : 21 ] * 10'b1011011001 ;

assign R_temp_3 = R_temp_2 [ 10 : 1 ]  + R_temp_2 [ 16 : 11 ] * 5'b11011 ;

always @(R_temp_3)
begin
  if (R_temp_3 >= 10'b1111100101)
    R_temp <= R_temp_3 - 10'b1111100101;
  else
    R_temp <= R_temp_3;
end

assign R = R_temp;

endmodule