module sequence_detector(
    input clk,
    input in,
    output reg detected
);

reg [3:0] shift_reg;

initial begin
    shift_reg = 4'b0000;
    detected = 0;
end

always @(posedge clk)
begin
    shift_reg <= {shift_reg[2:0], in};

    if(shift_reg == 4'b1011)
        detected <= 1'b1;
    else
        detected <= 1'b0;
end

endmodule