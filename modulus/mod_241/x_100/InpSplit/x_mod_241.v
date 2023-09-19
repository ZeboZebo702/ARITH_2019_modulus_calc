module x_100_mod_241(
    input [100:1] X,
    output [8:1] R
    );

wire [18:1] R_temp_1;
wire [13:1] R_temp_2;
wire [9:1] R_temp_3;
wire [8:1] R_temp_4;
reg [8:1]  R_temp;

assign R_temp_1 = X [ 8 : 1 ]  + X [ 16 : 9 ] * 4'b1111 + X [ 24 : 17 ] * 8'b11100001 + 
X [ 32 : 25 ]  + X [ 40 : 33 ] * 4'b1111 + X [ 48 : 41 ] * 8'b11100001 + X [ 56 : 49 ]  + 
X [ 64 : 57 ] * 4'b1111 + X [ 72 : 65 ] * 8'b11100001 + X [ 80 : 73 ]  + X [ 88 : 81 ] * 4'b1111 + 
X [ 96 : 89 ] * 8'b11100001 + X [ 100 : 97 ] ;

assign R_temp_2 = R_temp_1 [ 8 : 1 ]  + R_temp_1 [ 16 : 9 ] * 4'b1111 + R_temp_1 [ 18 : 17 ] * 8'b11100001 ;

assign R_temp_3 = R_temp_2 [ 8 : 1 ]  + R_temp_2 [ 13 : 9 ] * 4'b1111 ;

assign R_temp_4 = R_temp_3 [ 8 : 1 ]  + R_temp_3 [ 9 ] * 4'b1111 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 8'b11110001)
    R_temp <= R_temp_4 - 8'b11110001;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule
