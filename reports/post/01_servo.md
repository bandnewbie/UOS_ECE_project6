# 실험 후 레포트: 01 서보모터 제어

- 작성자: 박건우 (2025440050), G조
- 실험일: 2026-10-26
- 소스 커밋: {{COMMIT_URL}}
- 설계: [lab6_01_servo](../../lab6_01_servo) (본인 코드, 교안 FPGA_additional.md), top servo_ctrl
- 보드 기록: 조원 노트북, 조원 코드·XDC

## 시뮬레이션
- VS Code(Icarus Verilog, 실험 전): `PASS servo: 20ms frame, 1/1.5/2ms pulse, limits, reset` → [evidence/01/vscode](../../evidence/01/vscode)
- Vivado(실험 당일): 교안 TB로 같은 결과 확인

![Vivado 시뮬레이션](<../../evidence/01/vivado/sim.png>)

## 합성·구현·비트스트림
write_bitstream Complete, Failed Routes 0.

![Vivado 구현](<../../evidence/01/vivado/impl.png>)

## 보드
버튼을 누를 때마다 서보 각도가 한 단계씩 바뀌었다.
- 영상: [servo.mp4](<../../evidence/01/board/servo.mp4>)

작성일: {{DATE}}
