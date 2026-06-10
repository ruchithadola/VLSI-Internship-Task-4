module tb_sequence_detector;

reg clk;
reg in;
wire detected;

sequence_detector uut(
    .clk(clk),
    .in(in),
    .detected(detected)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_sequence_detector);

    clk = 0;

    in = 1;
    #10;

    in = 0;
    #10;

    in = 1;
    #10;

    in = 1;
    #10;

    in = 0;
    #10;

    #50;
    $finish;
end

endmodule