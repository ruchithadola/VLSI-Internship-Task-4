module tb_mealy_fsm;

reg clk;
reg in;
wire out;
wire state;

mealy_fsm uut(
    .clk(clk),
    .in(in),
    .out(out),
    .state(state)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_mealy_fsm);

    clk = 0;

    in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;

    #50;
    $finish;
end

endmodule