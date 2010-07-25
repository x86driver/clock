`timescale 1ns/1ns
module clock(CLOCK, RST, COUNTER);
input CLOCK;
input RST;
output [31:0] COUNTER;
reg [31:0] COUNTER = 0;

always @(posedge CLOCK)
begin
   if (RST == 1) begin
        COUNTER = 0;
   end
   COUNTER = COUNTER + 1;
end

endmodule


module clock_tb;
reg CLOCK;
reg RST;
wire [31:0] COUNTER;

clock clock_1(.CLOCK(CLOCK), .RST(RST), .COUNTER(COUNTER));

initial CLOCK = 0;
initial RST = 0;

always #5 CLOCK = ~CLOCK;

//initial #20 RST = 0;

//initial #1000 $stop;

endmodule

