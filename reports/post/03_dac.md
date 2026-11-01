# 실험 후 레포트: 03 DAC

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: {{COMMIT_URL}}
- 설계: [lab6_03_dac](../../lab6_03_dac) (본인 코드, 교안 FPGA_additional.md), top dac
- 보드 기록: 조원 노트북, 조원 코드·XDC

## 시뮬레이션
- VS Code(Icarus Verilog, 실험 전): `PASS DAC: 260 writes, wraparound, channel, data hold, reset` → [evidence/03/vscode](../../evidence/03/vscode)
- Vivado(실험 당일): 교안 TB로 같은 결과 확인

![Vivado 시뮬레이션](<../../evidence/03/vivado/sim.png>)

## 합성·구현·비트스트림
write_bitstream Complete, Failed Routes 0.

![Vivado 구현](<../../evidence/03/vivado/impl.png>)

## 보드
LED 8비트 값과 전압 표시가 값에 따라 바뀌었고, 스위치로 채널을 바꿨다.
- 영상: [dac.mp4](<../../evidence/03/board/dac.mp4>)

작성일: {{DATE}}
