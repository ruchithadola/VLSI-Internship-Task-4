module mealy_fsm(
    input clk,
    input in,
    output reg out,
    output reg state
);

initial begin
    state = 0;
    out = 0;
end

always @(posedge clk)
begin
    state <= ~state;

    if(state == 1'b1 && in == 1'b1)
        out <= 1'b1;
    else
        out <= 1'b0;
end

endmodule