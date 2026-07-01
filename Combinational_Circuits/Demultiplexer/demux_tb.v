module demux1x2_tb;

reg in;
reg sel;
wire y0;
wire y1;

demux1x2 uut(
    .in(in),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $display("IN SEL | Y0 Y1");
    $monitor("%b   %b  | %b  %b", in, sel, y0, y1);

    in = 0; sel = 0; #10;
    in = 1; sel = 0; #10;
    in = 1; sel = 1; #10;
    in = 0; sel = 1; #10;

    $finish;
end

endmodule
