# STM32_2_과제7 · UART 명령으로 FPGA LED 제어 · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
[`task7_ece2_474_routine.c`](../../stm32_2_tasks/task7_ece2_474_routine.c) → `stm32_lab/Core/Src/ece2_474_routine.c`에 붙여넣기

## 설계와 예상 결과
MCU는 과제6과 같이 받은 바이트를 FPGA로 보내고 보낸 문자·바이트 값·결과를 출력한다. 명령 해석은 FPGA가 한다: `0` 끄기, `1` 켜기, `2` 반전, 그 밖의 문자는 유지. FPGA 쪽 구현은 조원이 진행한다.

## 사전 확인
arm-none-eabi-gcc로 `cmake --preset Debug && cmake --build build/Debug` 경고 없이 링크 완료.

## 보드
`evidence/task7/board/`에 시연 자료 추가 예정. `1` 반복은 계속 켜짐, `2` 반복은 매번 반전이어야 한다.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
