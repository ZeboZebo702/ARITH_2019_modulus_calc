module x_500_mod_113(
    input [500:1] X,
    output [7:1] R
    );

wire [19:1] R_temp_1;
wire [13:1] R_temp_2;
wire [10:1] R_temp_3;
wire [8:1] R_temp_4;
reg [7:1]  R_temp;

assign R_temp_1 = X [ 7 : 1 ]  + X [ 14 : 8 ] * 4'b1111 + X [ 21 : 15 ] * 7'b1110000 + 
X [ 28 : 22 ] * 7'b1100010 + X [ 35 : 29 ]  + X [ 42 : 36 ] * 4'b1111 + X [ 49 : 43 ] * 7'b1110000 + 
X [ 56 : 50 ] * 7'b1100010 + X [ 63 : 57 ]  + X [ 70 : 64 ] * 4'b1111 + X [ 77 : 71 ] * 7'b1110000 + 
X [ 84 : 78 ] * 7'b1100010 + X [ 91 : 85 ]  + X [ 98 : 92 ] * 4'b1111 + X [ 105 : 99 ] * 7'b1110000 + 
X [ 112 : 106 ] * 7'b1100010 + X [ 119 : 113 ]  + X [ 126 : 120 ] * 4'b1111 + X [ 133 : 127 ] * 7'b1110000 + 
X [ 140 : 134 ] * 7'b1100010 + X [ 147 : 141 ]  + X [ 154 : 148 ] * 4'b1111 + X [ 161 : 155 ] * 7'b1110000 + 
X [ 168 : 162 ] * 7'b1100010 + X [ 175 : 169 ]  + X [ 182 : 176 ] * 4'b1111 + X [ 189 : 183 ] * 7'b1110000 + 
X [ 196 : 190 ] * 7'b1100010 + X [ 203 : 197 ]  + X [ 210 : 204 ] * 4'b1111 + X [ 217 : 211 ] * 7'b1110000 + 
X [ 224 : 218 ] * 7'b1100010 + X [ 231 : 225 ]  + X [ 238 : 232 ] * 4'b1111 + X [ 245 : 239 ] * 7'b1110000 + 
X [ 252 : 246 ] * 7'b1100010 + X [ 259 : 253 ]  + X [ 266 : 260 ] * 4'b1111 + X [ 273 : 267 ] * 7'b1110000 + 
X [ 280 : 274 ] * 7'b1100010 + X [ 287 : 281 ]  + X [ 294 : 288 ] * 4'b1111 + X [ 301 : 295 ] * 7'b1110000 + 
X [ 308 : 302 ] * 7'b1100010 + X [ 315 : 309 ]  + X [ 322 : 316 ] * 4'b1111 + X [ 329 : 323 ] * 7'b1110000 + 
X [ 336 : 330 ] * 7'b1100010 + X [ 343 : 337 ]  + X [ 350 : 344 ] * 4'b1111 + X [ 357 : 351 ] * 7'b1110000 + 
X [ 364 : 358 ] * 7'b1100010 + X [ 371 : 365 ]  + X [ 378 : 372 ] * 4'b1111 + X [ 385 : 379 ] * 7'b1110000 + 
X [ 392 : 386 ] * 7'b1100010 + X [ 399 : 393 ]  + X [ 406 : 400 ] * 4'b1111 + X [ 413 : 407 ] * 7'b1110000 + 
X [ 420 : 414 ] * 7'b1100010 + X [ 427 : 421 ]  + X [ 434 : 428 ] * 4'b1111 + X [ 441 : 435 ] * 7'b1110000 + 
X [ 448 : 442 ] * 7'b1100010 + X [ 455 : 449 ]  + X [ 462 : 456 ] * 4'b1111 + X [ 469 : 463 ] * 7'b1110000 + 
X [ 476 : 470 ] * 7'b1100010 + X [ 483 : 477 ]  + X [ 490 : 484 ] * 4'b1111 + X [ 497 : 491 ] * 7'b1110000 + 
X [ 500 : 498 ] * 7'b1100010 ;

assign R_temp_2 = R_temp_1 [ 7 : 1 ]  + R_temp_1 [ 14 : 8 ] * 4'b1111 + R_temp_1 [ 19 : 15 ] * 7'b1110000 ;

assign R_temp_3 = R_temp_2 [ 7 : 1 ]  + R_temp_2 [ 13 : 8 ] * 4'b1111 ;

assign R_temp_4 = R_temp_3 [ 7 : 1 ]  + R_temp_3 [ 10 : 8 ] * 4'b1111 ;

always @(R_temp_4)
begin
  if (R_temp_4 >= 7'b1110001)
    R_temp <= R_temp_4 - 7'b1110001;
  else
    R_temp <= R_temp_4;
end

assign R = R_temp;

endmodule