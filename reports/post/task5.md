# 실험 후 레포트: STM32_2_과제5 PC와 MCU 입출력

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: [606cf6f](https://github.com/bandnewbie/UOS_ECE_project6/commit/606cf6ff48ed1983425050aa7d5699db71c9a81f)
- 보드: NUCLEO-G474RE, UART2(VCP, COM8) 9600 8N1, 줄 끝 없음
- 코드: [task5_ece2_474_routine.c](../../stm32_2_tasks/task5_ece2_474_routine.c)
- 수행 PC: 본인 노트북

## 결과
| 보낸 문자 | 예상 | 실측 |
|---|---|---|
| 1 | 0x31 | char: 1, byte: 0x31 |
| A | 0x41 | char: A, byte: 0x41 |
| a | 0x61 | char: a, byte: 0x61 |

처음 실행에서 한글 printf 문구가 깨져 보여 문구만 영문으로 바꿨다. 값은 모두 예상과 같았다.

## 자료
![첫 실행](<../../evidence/task5/board/task5_first_run.png>)
- [task5.mp4](<../../evidence/task5/board/task5.mp4>) (영문 문구, A·a·1 전송)

작성일: 2026-11-02
