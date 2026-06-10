module tb_traffic_light;

reg clk;
wire [1:0] state;

traffic_light uut(
    .clk(clk),
    .state(state)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_traffic_light);

    clk = 0;

    #100;
    $finish;
end

endmodule