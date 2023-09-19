module x_100_mod_4051(
    input [100:1] X,
    output [12:1] R
    );

wire [26:1] R_temp_1;
wire [18:1] R_temp_2;
wire [13:1] R_temp_3;
wire [12:1] R_temp_4;
reg [12:1]  R_temp;

assign R_temp_1 = X [ 12 : 1 ]  + X [ 24 : 13 ] * 6'b101101 + X [ 36 : 25 ] * 11'b11111101001 + 
						X [ 48 : 37 ] * 11'b11111010011 + X [ 60 : 49 ] * 10'b1111110101 + 
						{X [ 72 : 61 ], 10'b0000000000} + X [ 84 : 73 ] * 11'b10111101111 + 
						X [ 96 : 85 ] * 12'b110111010011 + X [ 100 : 97 ] * 11'b10011110010 ;

assign R_temp_2 = R_temp_1 [ 12 : 1 ]  + R_temp_1 [ 24 : 13 ] * 6'b101101 + 
						R_temp_1 [ 26 : 25 ] * 11'b11111101001 ;

assign R_temp_3 = R_temp_2 [ 12 : 1 ]  + R_temp_2 [18 : 13 ] * 6'b101101 ;

assign R_temp_4 = R_temp_3 [ 12 : 1 ]  + R_temp_3 [ 13 ] * 6'b101101 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 12'b111111010011  )
    R_temp <= R_temp_4 - 12'b111111010011;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule