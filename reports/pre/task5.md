# STM32_2_과제5 · PC와 MCU 입출력 확인 · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
[`task5_ece2_474_routine.c`](../../stm32_2_tasks/task5_ece2_474_routine.c) → `stm32_lab/Core/Src/ece2_474_routine.c`에 붙여넣기

## 설계와 예상 결과
`polling_routine()`에서 `getchar()`로 받은 문자와 바이트 값을 16진수로 출력. 문자 `1`, `A`, `a`는 각각 0x31, 0x41, 0x61이 나와야 한다. Serial Monitor는 9600 8N1, 보내기 줄바꿈은 없음(None). init은 빈 상태.

## 사전 확인
arm-none-eabi-gcc로 `cmake --preset Debug && cmake --build build/Debug` 경고 없이 링크 완료.

## 보드
`evidence/task5/board/`에 시연 자료 추가 예정. FPGA 연결 없음.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
