module x_200_mod_241(
    input [200:1] X,
    output [8:1] R
    );

wire [19:1] R_temp_1;
wire [13:1] R_temp_2;
wire [10:1] R_temp_3;
wire [9:1] R_temp_4;
reg [8:1]  R_temp;

assign R_temp_1 = X [ 8 : 1 ]  + X [ 16 : 9 ] * 4'b1111 + X [ 24 : 17 ] * 8'b11100001 + 
X [ 32 : 25 ]  + X [ 40 : 33 ] * 4'b1111 + X [ 48 : 41 ] * 8'b11100001 + X [ 56 : 49 ]  + 
X [ 64 : 57 ] * 4'b1111 + X [ 72 : 65 ] * 8'b11100001 + X [ 80 : 73 ]  + X [ 88 : 81 ] * 4'b1111 + 
X [ 96 : 89 ] * 8'b11100001 + X [ 104 : 97 ]  + X [ 112 : 105 ] * 4'b1111 + X [ 120 : 113 ] * 8'b11100001 + 
X [ 128 : 121 ]  + X [ 136 : 129 ] * 4'b1111 + X [ 144 : 137 ] * 8'b11100001 + X [ 152 : 145 ]  + 
X [ 160 : 153 ] * 4'b1111 + X [ 168 : 161 ] * 8'b11100001 + X [ 176 : 169 ]  + X [ 184 : 177 ] * 4'b1111 + 
X [ 192 : 185 ] * 8'b11100001 + X [ 200 : 193 ];

assign R_temp_2 = R_temp_1 [ 8 : 1 ]  + R_temp_1 [ 16 : 9 ] * 4'b1111 + R_temp_1 [ 19 : 17 ] * 8'b11100001 ;

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
