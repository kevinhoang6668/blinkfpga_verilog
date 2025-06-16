//==============================
// EXAMPLE BLINK MODULE 1S_ON 1S_OFF
// BOARD      : SIPEED TANG PRIMER 25K 
// FPGA       : GW5A-LV25MG121NC1/10
// DEVICE VER : A (DEFAULT)
// CLOCK      : 50MHz ONBOARD CRYSTAL
// NOTES:
//   - Please define clk, led_done, led_ready.
//   - Project -> Configuration -> Dual-Purpose Pin:
//        clk        -> Use CPU as regular IO
//        led_done   -> Use DONE as regular IO
//        led_ready  -> Use READY as regular IO
//==============================
module blink (
    input clk,            //set clk as input
    output reg led_ready  //set led_ready as output
    );
localparam counter_max = 32'd49_999_999; 
//Set 32bit for counter_max, max value=49.999.999 -> 50.000.000 cycle per second for clock 50MHz
//Adjust this value to change blink speed
reg [31:0] counter = 0; //Initialized counter=0
always @(posedge clk) begin
    if (counter < counter_max)
        counter <= counter + 1;
    else begin
        counter <= 0;
        led_ready <= ~led_ready;
    end
end
endmodule
