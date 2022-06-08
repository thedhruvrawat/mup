## Lab 8: BIOS Interrupts – Display

### Task

Display Your First Name in the top left corner of the screen and your ID in the bottom right corner. The text color is yellow and the background color is black. The Screen resolution is `720 x 400` pixels in text VGA mode (80cols x 25rows) with 16 colors. Use video mode `03h`.

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab8.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab8.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab8.obj/t
Run File [lab8.com]: "lab8.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab8.com`.

```dosbox
E:\> lab8.com
DHRUV RAWAT


                                                            2019B3A70537P
E:\>
```
> Screenshots are available in the [screenshots](screenshots/) folder