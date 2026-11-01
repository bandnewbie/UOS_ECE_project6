`timescale 1ns/1ps
// STM32_2_과제7: MCU(PC10)에서 받은 문자로 LED 제어, 받은 문자는 USB-UART(F6)로 PC에 그대로 출력
// '0' 끄기, '1' 켜기, '2' 반전, 그 밖의 문자 유지 (교안 표)
module lab6_uart_led #(
    parameter integer CLK_HZ = 50_000_000,
    parameter integer BAUD = 9_600
) (
    input  wire clk_50mhz,
    input  wire rst_p,
    input  wire mcu_rxd,      // MCU PC10(TX) -> 확장 GPIO
    output wire uart_txd,     // F6 -> 보드 USB-UART -> PC
    output wire led_cmd,      // 명령으로 제어하는 LED
    output wire [6:0] led_last // 마지막 수신 바이트 하위 7비트 (확인용)
);
    localparam integer DIV = (CLK_HZ + BAUD/2) / BAUD;
    wire [7:0] rx_data;
    wire rx_valid, rx_framing_error, tx_ready;
    reg tx_valid;
    reg [7:0] tx_data, last_data;
    reg led_state;

    uart_rx #(.DIV(DIV)) u_rx(
        .clk(clk_50mhz), .rst_p(rst_p), .rx(mcu_rxd), .data(rx_data),
        .valid(rx_valid), .framing_error(rx_framing_error));
    uart_tx #(.DIV(DIV)) u_tx(
        .clk(clk_50mhz), .rst_p(rst_p), .valid(tx_valid), .data(tx_data),
        .ready(tx_ready), .tx(uart_txd));

    always @(posedge clk_50mhz or posedge rst_p) begin
        if (rst_p) begin
            tx_valid <= 0; tx_data <= 0; last_data <= 0; led_state <= 0;
        end else begin
            tx_valid <= 0;
            if (rx_valid) begin
                last_data <= rx_data;
                case (rx_data)
                    8'h30: led_state <= 1'b0;        // '0'
                    8'h31: led_state <= 1'b1;        // '1'
                    8'h32: led_state <= ~led_state;  // '2'
                    default: led_state <= led_state;
                endcase
                if (tx_ready) begin
                    tx_data <= rx_data;
                    tx_valid <= 1;
                end
            end
        end
    end
    assign led_cmd = led_state;
    assign led_last = last_data[6:0];
endmodule
