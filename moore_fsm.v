module moore_fsm(
    input clk,
    output reg [1:0] state
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

initial
    state = S0;

always @(posedge clk)
begin
    case(state)
        S0: state <= S1;
        S1: state <= S2;
        S2: state <= S0;
        default: state <= S0;
    endcase
end

endmodule