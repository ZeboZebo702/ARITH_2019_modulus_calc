module x_100_mod_113(
    input [100:1] X,
    output [7:1] R
    );

wire [17:1] R_temp_1;
wire [12:1] R_temp_2;
wire [9:1] R_temp_3;
wire [8:1] R_temp_4;
reg [7:1]  R_temp;

assign R_temp_1 = X [ 7 : 1 ]  + X [ 14 : 8 ] * 4'b1111 + X [ 21 : 15 ] * 7'b1110000 + 
						X [ 28 : 22 ] * 7'b1100010 + X [ 35 : 29 ]  + X [ 42 : 36 ] * 4'b1111 + 
						X [ 49 : 43 ] * 7'b1110000 + X [ 56 : 50 ] * 7'b1100010 + X [ 63 : 57 ]  + 
						X [ 70 : 64 ] * 4'b1111 + X [ 77 : 71 ] * 7'b1110000 + 
						X [ 84 : 78 ] * 7'b1100010 + X [ 91 : 85 ]  + X [ 98 : 92 ] * 4'b1111 + 
						X [ 100 : 99 ] * 7'b1110000 ;

assign R_temp_2 = R_temp_1 [ 7 : 1 ]  + R_temp_1 [ 14 : 8 ] * 4'b1111 + R_temp_1 [ 17 : 15 ] * 7'b1110000 ;

assign R_temp_3 = R_temp_2[ 7 : 1 ]  + R_temp_2 [ 12 : 8 ] * 4'b1111 ;

assign R_temp_4 = R_temp_3 [ 7 : 1 ]  + R_temp_3 [ 9 : 8 ] * 4'b1111 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 7'b1110001)
    R_temp <= R_temp_4 - 7'b1110001;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule
