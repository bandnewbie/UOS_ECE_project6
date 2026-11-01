# 실험 후 레포트: STM32_2_과제7 UART 명령으로 FPGA LED 제어

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: {{COMMIT_URL}}
- MCU 코드: [task7_ece2_474_routine.c](../../stm32_2_tasks/task7_ece2_474_routine.c)
- 본인 FPGA 코드: [task7_fpga](../../stm32_2_tasks/task7_fpga) (top lab6_uart_led, XDC는 조원 작성이라 미포함)
- 수행 PC: 조원 노트북 (보드에 기록한 FPGA 코드·XDC는 조원 작성)

## 결과
| 보낸 문자 | 예상 LED | 실측 |
|---|---|---|
| 1 | 켜짐 | 켜짐 |
| 2 | 반전 | 반전 |
| x | 유지 | 유지 |
| 0 | 꺼짐 | 꺼짐 |

Vivado 시뮬레이션: 31,31,32,32,78,30,01 전송 시 LED 기대값 1,1,0,1,1,0,0과 일치. 합성·구현·비트스트림 완료, Failed Routes 0.

## 자료
![Vivado 시뮬레이션](<../../evidence/task7/vivado/sim.png>)
![Vivado 구현](<../../evidence/task7/vivado/impl.png>)
![LED1 켜짐](<../../evidence/task7/board/led1_on.jpg>)
- 영상: [task6_7.mp4](<../../evidence/task7/board/task6_7.mp4>)

작성일: {{DATE}}
