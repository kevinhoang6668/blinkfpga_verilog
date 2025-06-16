//==============================
// EXAMPLE CLOCK MODULE FPGA
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
//clock 50MHz -> 1cycle = 20ns -> 0-10-20 = low - rise time - high (waveform timeline). 
//==============================
create_clock -name clk -period 20 -waveform {0 10} [get_ports {clk}]

