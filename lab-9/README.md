## Lab 9: BIOS Interrupts – Display 2

### Task

Draw 2 Squares (One with Bright Red pixels, and One with Blue pixels) both with dimensions of `100 x 100` pixels. The Top Left corner of the Blue square is at pixel coordinate `(40, 40)`. The top left corner of the Red square is at pixel coordinate `(140, 140)`. Set display mode as `Graphical Mode (12H)`.

### Sample Output

![Sample Output](sampleoutput.png)

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab9.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab9.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab9.obj/t
Run File [lab9.com]: "lab9.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab9.com`.

```dosbox
E:\> lab9.com
```
> Screenshots are available in the [screenshots](screenshots/) folder