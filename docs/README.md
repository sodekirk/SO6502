# SO6502
My 65C02 SBC inspired by Ben Eater's 6502 computer on a breadboard series of YouTube videos.

![SO6502 image](./images/SO6502.jpg?raw=true)

### Features
#### Hardware
- W65C02 CPU @ 10MHz
- AT25C256 - 32KB ROM
- IDT71256 - 32KB RAM
- ATF22V10C PLD - address decoding, qualified read and write signals
- W65C22 VIA - two bidirectional 8-bit I/O ports
- SC28L92 Dual UART - two full-duplex asynchronous receiver/transmitter channels
- MAX238 - RS-232 line driver

#### Firmware
- C02Monitor - written by Kevin Maier
- Tali Forth 2

### History
I started with the Ben Eater 6502 computer on a breadboard kit, built a wire-wrap version, and then designed a PCB using KiCad.