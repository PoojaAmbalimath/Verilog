module encoder4x2(
    input d0,
    input d1,
    input d2,
    input d3,
    output [1:0] y
);

assign y[1] = d2 | d3;
assign y[0] = d1 | d3;

endmodule
