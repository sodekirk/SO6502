# CUPL
This is the code to program the ATF22V10 PLD to implement address decoding and to qualify the read and write signals with the system clock. The advantage to using a PLD for address decoding is that the memory map can be changed by simply reprogramming the 22V10.

I decided to use 12 address lines to make the memory addressing granularity fine enough to eliminate unused addresses. Using fewer address lines would have freed up inputs to the 22V10 for other uses, at the expense of introducing some wasted memory addresses.

I played around a little to see if I could also use the 22V10 to introduce CPU wait states for slower peripherals (RAM/ROM), but I don't think I ever got it working.

The code is compiled using WinCUPL into a .jed file that can be written to the 22V10 using a programmer, such as the XGecu TL866II+, or similar.

WinCUPL is old and finicky. It was probably written back in the days of short filenames (8 character name + 3 character extension), so it is a good idea to stick with that and to avoid spaces in the filenames and paths to the files.

### Memory Map
```
0000..7FFF RAM
8000..800F SC28L92
8010..801F W65C22
8020..802F Spare
8030..FFFF ROM
```
