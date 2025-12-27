.org $8000

.advance $8030

; I/O facilities are handled in the separate kernel files because of their
; hardware dependencies. See docs/memorymap.txt for a discussion of Tali's
; memory layout.


; MEMORY MAP OF RAM

; Drawing is not only very ugly, but also not to scale. See the manual for
; details on the memory map. Note that some of the values are hard-coded in
; the testing routines, especially the size of the input history buffer, the
; offset for PAD, and the total RAM size. If these are changed, the tests will
; have to be changed as well


;    $0000  +-------------------+  ram_start, zpage, user0
;           |  User varliables  |
;           +-------------------+
;           |                   |
;           |                   |
;           +~~~~~~~~~~~~~~~~~~~+  <-- dsp
;           |                   |
;           |  ^  Data Stack    |
;           |  |                |
;    $0078  +-------------------+  dsp0, stack
;           |                   |
;           |   (Reserved for   |
;           |      kernel)      |
;           |                   |
;    $0100  +-------------------+
;           |                   |
;           |  ^  Return Stack  |  <-- rsp
;           |  |                |
;    $0200  +-------------------+  rsp0, buffer, buffer0
;           |  |                |
;           |  v  Input Buffer  |
;           |                   |
;    $0300  +-------------------+  cp0
;           |  |                |
;           |  v  Dictionary    |
;           |       (RAM)       |
;           |                   |
;   (...)   ~~~~~~~~~~~~~~~~~~~~~  <-- cp
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;           |                   |
;    $7C00  +-------------------+  hist_buff, cp_end
;           |   Input History   |
;           |    for ACCEPT     |
;           |  8x128B buffers   |
;    $7fff  +-------------------+  ram_end


; HARD PHYSICAL ADDRESSES

; Some of these are somewhat silly for the 65c02, where for example
; the location of the Zero Page is fixed by hardware. However, we keep
; these for easier comparisons with Liara Forth's structure and to
; help people new to these things.

.alias ram_start $0000          ; start of installed 32 KiB of RAM
.alias ram_end   $8000-1        ; end of installed RAM
.alias zpage     ram_start      ; begin of Zero Page ($0000-$00ff)
.alias zpage_end $7F            ; end of Zero Page used ($0000-$007f)	
.alias stack0    $0100          ; begin of Return Stack ($0100-$01ff)
.alias hist_buff ram_end-$03ff  ; begin of history buffers


; SOFT PHYSICAL ADDRESSES

; Tali currently doesn't have separate user variables for multitasking. To
; prepare for this, though, we've already named the location of the user
; variables user0. Note cp0 starts one byte further down so that it currently
; has the address $300 and not $2FF. This avoids crossing the page boundry when
; accessing the user table, which would cost an extra cycle.

.alias user0     zpage            ; user and system variables
.alias rsp0      $ff              ; initial Return Stack Pointer (65c02 stack)
.alias bsize     $ff              ; size of input/output buffers
.alias buffer0   stack0+$100      ; input buffer ($0200-$027f)
.alias cp0       buffer0+bsize+1  ; Dictionary starts after last buffer
.alias cp_end    hist_buff        ; Last RAM byte available for code
.alias padoffset $ff              ; offset from CP to PAD (holds number strings)


.require "../taliforth.asm" ; zero page variables, definitions

; =====================================================================
; FINALLY

; Of the 32 KiB we use, 24 KiB are reserved for Tali (from $8000 to $DFFF)
; and the last eight (from $E000 to $FFFF) are left for whatever the user
; wants to use them for.

.advance $f000

; Default kernel file for Tali Forth 2
; Scot W. Stevenson <scot.stevenson@gmail.com>
; First version: 19. Jan 2014
; This version: 18. Feb 2018
;
; This section attempts to isolate the hardware-dependent parts of Tali
; Forth 2 to make it easier for people to port it to their own machines.
; Ideally, you shouldn't have to touch any other files. There are three
; routines and one string that must be present for Tali to run:
;
;       kernel_init - Initialize the low-level hardware
;       kernel_getc - Get single character in A from the keyboard (blocks)
;       kernel_putc - Prints the character in A to the screen
;       s_kernel_id - The zero-terminated string printed at boot
;
; This default version Tali ships with is written for the py65mon machine
; monitor (see docs/MANUAL.md for details).

; The main file of Tali got us to $e000. However, py65mon by default puts
; the basic I/O routines at the beginning of $f000. We don't want to change
; that because it would make using it out of the box harder, so we just
; advance past the virtual hardware addresses.
;.advance $f010

; All vectors currently end up in the same place - we restart the system
; hard. If you want to use them on actual hardware, you'll have to redirect
; them all.
platform_bye:
v_nmi:
v_reset:
v_irq:
kernel_init:
        ; """Initialize the hardware. This is called with a JMP and not
        ; a JSR because we don't have anything set up for that yet. With
        ; py65mon, of course, this is really easy. -- At the end, we JMP
        ; back to the label forth to start the Forth system.
        ; """
.scope
                ; Since the default case for Tali is the py65mon emulator, we
                ; have no use for interrupts. If you are going to include
                ; them in your system in any way, you're going to have to
                ; do it from scratch. Sorry.
                sei             ; Disable interrupts
                jsr init_2892

                ; We've successfully set everything up, so print the kernel
                ; string
                ldx #0
*               lda s_kernel_id,x
                beq _done
                jsr kernel_putc
                inx
                bra -
_done:
                jmp forth
.scend

;; SC28L92 addresses
.alias SCBase $8000
.alias SCMRA SCBase+0
.alias SCSRA SCBase+1
.alias SCCSRA SCBase+1
.alias SCCRA SCBase+2
.alias SCRXA SCBase+3
.alias SCTXA SCBase+3
.alias SCACR SCBase+4
.alias SCISR SCBase+5
.alias SCIMR SCBase+5
.alias SCCTU SCBase+6
.alias SCCTPU SCBase+6
.alias SCCTL SCBase+7
.alias SCCTPL SCBase+7
.alias SCIPR SCBase+13
.alias SCOPCR SCBase+13
.alias SCSTACT SCBase+14
.alias SCSTPCT SCBase+15

init_2892:      
        ;; disable power-down
        lda #%11110000
        sta SCCRA

        ;; deassert RTS
        lda #%10010000
        sta SCCRA

        ;; disable all interrupts
        lda #%00000000
        sta SCIMR

        ;; reset receiver
        lda #%00100000
        sta SCCRA

        ;; reset transmitter
        lda #%00110000
        sta SCCRA

        ;; reset break change interrupt
        lda #%01010000
        sta SCCRA

        ;; reset error status
        lda #%01000000
        sta SCCRA

        ;; disable time-out mode
        lda #%11000000
        sta SCCRA

        ;; disable output ports
        lda #%00000000
        sta SCOPCR

        ;; ACR
        lda #%01100000
        sta SCACR

        ;; select MR0
        lda #%10110000
        sta SCCRA

        ;; MR0
        lda #%00001001
        sta SCMRA

        ;; select MR1
        lda #%00010000
        sta SCCRA

        ;; MR1
        lda #%10010011
        sta SCMRA

        ;; MR2
        lda #%00010111
        sta SCMRA

        ;; clock select
        lda #%10111011
        sta SCCSRA

        ;; enable transmitter and receiver interrupts
        lda #%00000000
        sta SCIMR
        
        ;; enable receiver
        lda #%00000001
        sta SCCRA

        ;; enable transmitter
        lda #%00000100
        sta SCCRA

        ;; counter lower preset
        ;lda #%00000000
        ;sta SCCTPL
        
        ;; count upper preset
        ;lda #%01001000
        ;sta SCCTPU

        ;; start timer
        ;lda SCSTACT
        
        ;; assert RTS
        lda #%10000000
        sta SCCRA

        rts

kernel_getc:
        ; """Get a single character from the keyboard. By default, py65mon
        ; is set to $f004, which we just keep. Note that py65mon's getc routine
        ; is non-blocking, so it will return '00' even if no key has been
        ; pressed. We turn this into a blocking version by waiting for a
        ; non-zero character.
        ; """
.scope
_loop:
                lda SCSRA
                bit #%00000001
                beq _loop
                lda SCRXA
                rts
.scend


kernel_putc:
        ; """Print a single character to the console. By default, py65mon
        ; is set to $f001, which we just keep.
        ; """
.scope
                pha
_loop:  
                lda SCSRA
                bit #%00000100
                beq _loop

                pla
                sta SCTXA
                rts
.scend


; Leave the following string as the last entry in the kernel routine so it
; is easier to see where the kernel ends in hex dumps. This string is
; displayed after a successful boot
s_kernel_id:
        .byte "Tali Forth 2 default kernel for SO6502 (24 Oct. 2020)", AscLF, 0


; Add the interrupt vectors
.advance $fffa

.word v_nmi
.word v_reset
.word v_irq

; END

