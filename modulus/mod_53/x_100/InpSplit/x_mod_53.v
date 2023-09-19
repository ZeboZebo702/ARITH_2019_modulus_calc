module x_100_mod_53(
    input [100:1] X,
    output [6:1] R
    );

wire [15:1] R_temp_1;
wire [10:1] R_temp_2;
wire [8:1] R_temp_3;
wire [7:1] R_temp_4;
reg [6:1]  R_temp;

assign R_temp_1 = X [ 6 : 1 ]  + X [ 12 : 7 ] * 4'b1011 + X [ 18 : 13 ] * 4'b1111 + 
						X [ 24 : 19 ] * 3'b110 + X [ 30 : 25 ] * 4'b1101 + X [ 36 : 31 ] * 6'b100101 + 
						X [ 42 : 37 ] * 6'b100100 + X [ 48 : 43 ] * 5'b11001 + X [ 54 : 49 ] * 4'b1010 + 
						{X [ 60 : 55 ], 2'b00} + X [ 66 : 61 ] * 6'b101100 + X [ 72 : 67 ] * 3'b111 + 
						X [ 78 : 73 ] * 5'b11000 + X [ 84 : 79 ] * 6'b110100 + X [ 90 : 85 ] * 6'b101010 + 
						X [ 96 : 91 ] * 6'b100110 + X [ 100 : 97 ] * 6'b101111 ;

assign R_temp_2 = R_temp_1 [ 6 : 1 ]  + R_temp_1 [ 12 : 7 ] * 4'b1011 + R_temp_1 [ 15 : 13 ] * 4'b1111 ;

assign R_temp_3 = R_temp_2 [ 6 : 1 ]  + R_temp_2 [ 10 : 7 ] * 4'b1011 ;

assign R_temp_4 = R_temp_3 [ 6 : 1 ]  + R_temp_3 [ 8 : 7 ] * 4'b1011 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 6'b110101)
    R_temp <= R_temp_4 - 6'b110101;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule
