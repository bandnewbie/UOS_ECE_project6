# STM32_2 과제 코드 보관본

`stm32_lab\Core\Src\ece2_474_routine.c`에 통째로 붙여넣어 쓴다. 붙여넣은 뒤에는 디버깅을 끝내고(Shift+F5) Build → F5로 다시 올린다.
세 파일 모두 `ece2_474_init()`은 빈 상태(교안 "예제 시작과 전환" 표의 STM32_2 UART 예제)이고 `polling_routine()`만 다르다.

| 파일 | 과제 | 동작 |
|---|---|---|
| `task5_ece2_474_routine.c` | STM32_2_과제5 | PC에서 받은 문자와 바이트 값(16진수)을 VCP로 출력 |
| `task6_ece2_474_routine.c` | STM32_2_과제6 | PC에서 받은 한 바이트를 UART3(PC10)로 FPGA에 전송, 전송 결과 출력 |
| `task7_ece2_474_routine.c` | STM32_2_과제7 | 과제6과 같이 전송하고 보낸 문자·바이트 값·결과 출력. LED 명령(0/1/2) 해석은 FPGA가 한다 |

- 한 번에 하나만 `ece2_474_routine.c`에 둔다.
- Serial Monitor는 9600, 8비트, 패리티 없음, 정지 비트 1. 한 문자 확인에서는 보내기 줄바꿈을 없음(None)으로 한다.
- 과제6·7의 FPGA UART 수신 회로와 XDC는 조원이 FPGA 프로젝트에서 작성한다.
- 출처: ece2_474 매뉴얼 v1.1.0 (https://github.com/Glaysia/ece2_474)
