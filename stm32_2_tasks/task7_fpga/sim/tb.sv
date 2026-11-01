`timescale 1ns/1ps
module tb;
    localparam integer DIV=8;
    reg clk_50mhz=0,rst_p=1,mcu_rxd=1;
    wire uart_txd, led_cmd;
    wire [6:0] led_last;
    integer checks=0,i;
    reg [7:0] observed;
    always #10 clk_50mhz=~clk_50mhz;
    lab6_uart_led #(.CLK_HZ(800),.BAUD(100)) dut
      (.clk_50mhz(clk_50mhz),.rst_p(rst_p),.mcu_rxd(mcu_rxd),.uart_txd(uart_txd),
       .led_cmd(led_cmd),.led_last(led_last));
    task send_byte(input [7:0] value);
    begin
      mcu_rxd=0;repeat(DIV)@(posedge clk_50mhz);
      for(i=0;i<8;i=i+1)begin mcu_rxd=value[i];repeat(DIV)@(posedge clk_50mhz);end
      mcu_rxd=1;repeat(DIV)@(posedge clk_50mhz);
    end endtask
    task receive_byte(input [7:0] expected);
    begin
      observed=0;@(negedge uart_txd);repeat(DIV+DIV/2)@(posedge clk_50mhz);
      for(i=0;i<8;i=i+1)begin observed[i]=uart_txd;repeat(DIV)@(posedge clk_50mhz);end
      if(observed!==expected)$fatal(1,"echo=%h expected=%h",observed,expected);
      repeat(DIV)@(posedge clk_50mhz);
    end endtask
    task cmd(input [7:0] c, input exp_led);
    begin
      fork send_byte(c); receive_byte(c); join
      if(led_cmd!==exp_led)$fatal(1,"cmd=%h led=%b expected=%b",c,led_cmd,exp_led);
      checks=checks+1;
    end endtask
    initial begin
      $dumpfile("wave.vcd");$dumpvars(0,tb);
      repeat(4)@(posedge clk_50mhz);rst_p=0;
      cmd("1",1); cmd("1",1); cmd("0",0); cmd("2",1); cmd("2",0); cmd("2",1); cmd("A",1); cmd("0",0);
      if(dut.rx_framing_error)$fatal(1,"unexpected framing error");
      $display("STM32_2_TASK7_PASS checks=%0d",checks);$finish;
    end
    initial begin #200000;$fatal(1,"timeout");end
endmodule
