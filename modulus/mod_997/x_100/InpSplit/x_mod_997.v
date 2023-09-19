module x_100_mod_997(
    input [100:1] X,
    output [10:1] R
    );

wire [22:1] R_temp_1;
wire [15:1] R_temp_2;
wire [11:1] R_temp_3;
reg [10:1]  R_temp;

assign R_temp_1 = X [ 10 : 1 ]  + X [ 20 : 11 ] * 5'b11011 + X [ 30 : 21 ] * 10'b1011011001 + 
X [ 40 : 31 ] * 10'b1011100100 + X [ 50 : 41 ] * 6'b101000 + X [ 60 : 51 ] * 7'b1010011 + 
X [ 70 : 61 ] * 8'b11110111 + X [ 80 : 71 ] * 10'b1010101111 + X [ 90 : 81 ] * 10'b1001011011 + 
X [ 100 : 91 ] * 9'b101001001 ;

assign R_temp_2 = R_temp_1 [ 10 : 1 ]  + R_temp_1 [ 20 : 11 ] * 5'b11011 + R_temp_1 [ 22 : 21 ] * 10'b1011011001 ;

assign R_temp_3 = R_temp_2 [ 10 : 1 ]  + R_temp_2 [ 15 : 11 ] * 5'b11011 ;

always @(R_temp_3)
begin
  if (R_temp_3 >= 10'b1111100101)
    R_temp <= R_temp_3 - 10'b1111100101;
  else
    R_temp <= R_temp_3;
end

assign R = R_temp;

endmodule
