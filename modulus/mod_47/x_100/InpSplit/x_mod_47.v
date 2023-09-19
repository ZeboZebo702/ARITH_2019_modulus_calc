module x_100_mod_47(
    input [100:1] X,
    output [6:1] R
    );

wire [14:1] R_temp_1;
wire [11:1] R_temp_2;
wire [9:1] R_temp_3;
wire [8:1] R_temp_4;
wire [7:1] R_temp_5;
reg [6:1]  R_temp;

assign R_temp_1 = X [ 6 : 1 ]  + X [ 12 : 7 ] * 5'b10001 + X [ 18 : 13 ] * 3'b111 + X [ 24 : 19 ] * 5'b11001 + X [ 30 : 25 ] * 2'b10 + X [ 36 : 31 ] * 6'b100010 + X [ 42 : 37 ] * 4'b1110 + X [ 48 : 43 ] * 2'b11 + X [ 54 : 49 ] * 3'b100 + X [ 60 : 55 ] * 5'b10101 + X [ 66 : 61 ] * 5'b11100 + X [ 72 : 67 ] * 3'b110 + X [ 78 : 73 ] * 4'b1000 + X [ 84 : 79 ] * 6'b101010 + X [ 90 : 85 ] * 4'b1001 + X [ 96 : 91 ] * 4'b1100 + X [ 100 : 97 ] * 5'b10000 ;

assign R_temp_2 = R_temp_1 [ 6 : 1 ]  + R_temp_1 [ 12 : 7 ] * 5'b10001 + R_temp_1 [ 14 : 13 ] * 3'b111 ;

assign R_temp_3 = R_temp_2 [ 6 : 1 ]  + R_temp_2 [ 11 : 7 ] * 5'b10001;

assign R_temp_4 = R_temp_3 [6 : 1 ]  + R_temp_3 [ 9 : 7 ] * 5'b10001;

assign R_temp_5 = R_temp_4 [6 : 1 ]  + R_temp_4 [ 8 : 7 ] * 5'b10001;

always @(R_temp_5)
begin
  if (R_temp_5 >= 6'b101111)
    R_temp <= R_temp_5 - 6'b101111;
  else
    R_temp <= R_temp_5;
end

assign R = R_temp;

endmodule
