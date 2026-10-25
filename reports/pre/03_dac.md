# FPGA DAC · 실험 전 레포트

**작성자:** 박건우 (2025440050) · G조  
**저장소:** https://github.com/bandnewbie/UOS_ECE_project6 · 태그 `lab6-pre` · 커밋 `(push 후 기입)`

## 소스
- 설계: [`dac.v`](../../lab6_03_dac/src/dac.v)
- 설계: [`dac_parallel8.v`](../../lab6_03_dac/src/dac_parallel8.v)
- 설계: [`ramp8.v`](../../lab6_03_dac/src/ramp8.v)
- 최상위: `dac`
- 테스트벤치: [`sim/tb.sv`](../../lab6_03_dac/sim/tb.sv) (교안 TB에 파형 덤프 두 줄만 추가)

## 설계와 예상 결과
UPDATE_CYCLES마다 0~255 값을 쓰고(기본 500,000클록 = 10 ms, 한 바퀴 약 2.56 초) 쓰기 LOW 펄스는 한 클록. cs_n, ldac_n은 0 고정, 채널은 add_sel. LED는 같은 8비트.

## 시뮬레이션 결과
- 로그: [`simulation.txt`](../../evidence/03/vscode/simulation.txt) → `PASS DAC: 260 writes, wraparound, channel, data hold, reset`
- 파형: [`wave.vcd`](../../evidence/03/vscode/wave.vcd), `wave.png`(VaporView 캡처 예정)
- UPDATE_CYCLES=4 축소: 40 ns마다 쓰기(첫 쓰기 55 ns), 255 → 0(10255 → 10295 ns), 5255 ns에 채널 1, 10430 ns 리셋, 10,436 ns 종료.

## 보드
핀(XDC)은 교안에 없고 조원이 FPGA 프로젝트에서 연결. 아날로그 출력은 계측기로 확인.

## 참고문헌
[1] Glaysia, ece2_474 STM32 실습 매뉴얼 v1.1.0, https://github.com/Glaysia/ece2_474
