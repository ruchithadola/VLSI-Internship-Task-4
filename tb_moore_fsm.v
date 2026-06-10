module tb_moore_fsm;

reg clk;
wire [1:0] state;

moore_fsm uut(
    .clk(clk),
    .state(state)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_moore_fsm);

    clk = 0;

    #100;
    $finish;
end

endmodule