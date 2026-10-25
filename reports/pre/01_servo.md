# FPGA 서보모터 제어 · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
- 설계: [`servo_ctrl.v`](../../lab6_01_servo/src/servo_ctrl.v)
- 설계: [`servo_position.v`](../../lab6_01_servo/src/servo_position.v)
- 설계: [`servo_pwm.v`](../../lab6_01_servo/src/servo_pwm.v)
- 최상위: `servo_ctrl`
- 테스트벤치: [`sim/tb.sv`](../../lab6_01_servo/sim/tb.sv) (교안 TB에 파형 덤프 두 줄만 추가)

## 설계와 예상 결과
left/right 펄스마다 펄스 폭을 100 µs씩 조절(1000~2000 µs, 리셋 1500 µs, 동시 입력 무시). 20 ms 프레임마다 폭만큼 servo를 1로 내고, 새 폭은 다음 프레임부터 적용. 50 MHz에서 1.5 ms=75,000클록.

## 시뮬레이션 결과
- 로그: [`simulation.txt`](../../evidence/01/vscode/simulation.txt) → `PASS servo: 20ms frame, 1/1.5/2ms pulse, limits, reset`
- 파형: [`wave.vcd`](../../evidence/01/vscode/wave.vcd), `wave.png`(VaporView 캡처 예정)
- CLK_HZ=100000 축소: 1500 → 150클록, left 한계 1000 → 100클록(40005 ns 프레임), right 한계 2000 → 200클록(80005 ns 프레임), 100,036 ns 종료.

## 보드
핀(XDC)은 교안에 없고 조원이 FPGA 프로젝트에서 연결. 버튼 → 한 번 누름 펄스 처리는 기존 실습 코드 연결.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
