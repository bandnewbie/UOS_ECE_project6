# 실험 후 레포트: STM32_2_과제6 MCU에서 FPGA로 보낸 값 확인

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: {{COMMIT_URL}}
- 경로: PC → VCP → MCU PC10(UART3 TX) → FPGA 확장 GPIO BDIO_08(C8, J11) → FPGA F6 USB-UART → PC, GND 공통(J6), DIP 2 ON
- MCU 코드: [task6_ece2_474_routine.c](../../stm32_2_tasks/task6_ece2_474_routine.c)
- 수행 PC: MCU 쪽은 본인 노트북, FPGA 수신 확인은 조원 노트북 (FPGA 코드·XDC는 조원 작성)

## 결과
| 확인 항목 | 예상 | 실측 |
|---|---|---|
| MCU 송신 반환값 | 0 (HAL_OK) | 0 |
| FPGA 포트 수신 | 보낸 문자와 같음 | 1, 2, x, 1, 1 순서로 일치 |

반환값 0은 송신 함수가 끝났다는 뜻이므로 FPGA 포트 출력으로 수신을 따로 확인했다.

## 자료
![MCU 출력](<../../evidence/task6/board/task6_mcu.png>)
![FPGA 수신](<../../evidence/task6/board/task6_fpga_rx.jpg>)
![배선](<../../evidence/task6/board/wiring.jpg>)
- 영상: [task6_7.mp4](<../../evidence/task7/board/task6_7.mp4>)

작성일: {{DATE}}
