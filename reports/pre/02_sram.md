# FPGA SRAM 읽기·쓰기 · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
- 설계: [`sram.v`](../../lab6_02_sram/src/sram.v)
- 설계: [`sram_bus_control.v`](../../lab6_02_sram/src/sram_bus_control.v)
- 최상위: `sram`
- 테스트벤치: [`sim/tb.sv`](../../lab6_02_sram/sim/tb.sv) (교안 TB에 파형 덤프 두 줄만 추가)

## 설계와 예상 결과
쓰기(ctrl_w만)면 버스를 구동하고 cs/we LOW, 읽기(ctrl_r만)면 버스 Z로 두고 cs/oe LOW, 동시 요청은 무시. 주소 0~15, 데이터 하위 4비트 사용.

## 시뮬레이션 결과
- 로그: [`simulation.txt`](../../evidence/02/vscode/simulation.txt) → `PASS SRAM: 16 addresses, bus release, simultaneous request`
- 파형: [`wave.vcd`](../../evidence/02/vscode/wave.vcd), `wave.png`(VaporView 캡처 예정)
- 주소 0~15에 15−i를 쓰고(첫 쓰기 4 ns, 버스 15) 98 ns부터 읽어 led_out 15, 14, 13, … 일치. 164 ns 종료.

## 보드
핀(XDC)은 교안에 없고 조원이 FPGA 프로젝트에서 연결.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
