# STM32_2_과제6 · MCU에서 FPGA로 보낸 값 확인 · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
[`task6_ece2_474_routine.c`](../../stm32_2_tasks/task6_ece2_474_routine.c) → `stm32_lab/Core/Src/ece2_474_routine.c`에 붙여넣기

## 설계와 예상 결과
PC에서 받은 한 바이트를 `HAL_UART_Transmit(&huart3, &data, 1U, 100U)`로 FPGA에 전송하고 반환값(0이면 HAL_OK)을 출력. 연결은 MCU PC10(TX) → FPGA 확장 GPIO RX, GND 공통. FPGA는 받은 문자를 자체 UART(F6 → USB-UART)로 PC에 출력하며, FPGA XDC·수신 회로는 조원이 FPGA 프로젝트에서 작성한다.

## 사전 확인
arm-none-eabi-gcc로 `cmake --preset Debug && cmake --build build/Debug` 경고 없이 링크 완료.

## 보드
`evidence/task6/board/`에 시연 자료 추가 예정. MCU 포트와 FPGA 포트 두 COM 포트를 동시에 열어 비교.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
