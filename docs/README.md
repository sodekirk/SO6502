# SO6502
My 65C02 SBC inspired by Ben Eater's 6502 computer on a breadboard series of YouTube videos.

![SO6502 image](./images/SO6502.jpg?raw=true)

### Features
#### Hardware
- W65C02 CPU @ 10MHz
- AT28C256 - 32KB ROM
- IDT71256 - 32KB RAM
- ATF22V10C PLD - address decoding, qualified read and write signals
- W65C22 VIA - two bidirectional 8-bit I/O ports
- SC28L92 Dual UART - two full-duplex asynchronous receiver/transmitter channels
- MAX238 - RS-232 line driver

#### Firmware
- C02Monitor - written by Kevin Maier
  - includes Enhanced BASIC V2.22 by Lee Davison
- Tali Forth 2


I started with the Ben Eater 6502 computer on a breadboard kit, built a wire-wrap version, and then designed a PCB using KiCad.

Interfacing with the SO6502 is accomplished using PuTTY and a USB to RS-232 cable with a NULL modem adapter connected to the serial port on the SO6502. An additional physical serial port can be installed if serial communication to other devices is desired.

The PCB is 4 layer, with separate power and ground planes. It was kept to 100mm x 100mm because larger boards were more expensive.