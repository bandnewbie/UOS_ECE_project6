# 실험 후 레포트: 02 SRAM 읽기·쓰기

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: {{COMMIT_URL}}
- 설계: [lab6_02_sram](../../lab6_02_sram) (본인 코드, 교안 FPGA_additional.md), top sram
- 보드 기록: 조원 노트북, 조원 코드·XDC

## 시뮬레이션
- VS Code(Icarus Verilog, 실험 전): `PASS SRAM: 16 addresses, bus release, simultaneous request` → [evidence/02/vscode](../../evidence/02/vscode)
- Vivado(실험 당일): 교안 TB로 같은 결과 확인

![Vivado 시뮬레이션](<../../evidence/02/vivado/sim.png>)

## 합성·구현·비트스트림
write_bitstream Complete, Failed Routes 0.

![Vivado 구현](<../../evidence/02/vivado/impl.png>)

## 보드
버튼으로 쓰고 읽어 LED에 쓴 값이 나타났다. 조합 회로라 타이밍 값은 NA.
- 영상: [sram.mp4](<../../evidence/02/board/sram.mp4>)

작성일: {{DATE}}
