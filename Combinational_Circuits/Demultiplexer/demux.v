module demux1x2(
    input in,
    input sel,
    output y0,
    output y1
);

assign y0 = (~sel) & in;
assign y1 = sel & in;

endmodule
