module traffic_light(
    input clk,
    output reg [1:0] state
);

parameter RED    = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN  = 2'b10;

initial
    state = RED;

always @(posedge clk)
begin
    case(state)
        RED:    state <= YELLOW;
        YELLOW: state <= GREEN;
        GREEN:  state <= RED;
        default: state <= RED;
    endcase
end

endmodule