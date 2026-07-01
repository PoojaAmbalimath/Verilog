module encoder4x2_tb;

reg d0, d1, d2, d3;
wire [1:0] y;

encoder4x2 uut(
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .y(y)
);

initial begin
    $display("D3 D2 D1 D0 | Y");

    d0=1; d1=0; d2=0; d3=0; #10;
    d0=0; d1=1; d2=0; d3=0; #10;
    d0=0; d1=0; d2=1; d3=0; #10;
    d0=0; d1=0; d2=0; d3=1; #10;

    $finish;
end

initial
    $monitor("%b %b %b %b | %b", d3, d2, d1, d0, y);

endmodule
