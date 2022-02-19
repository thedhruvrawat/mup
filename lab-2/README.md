## Lab 2: Introduction to **MASM**

### Task

Write an ALP to find the sum of digits in your ID number. Store the sum at memory location `{Year}:{ID_number}`. Please submit your assignment as a `.zip` containing, 
- `.asm` code 
- A screenshot showing the sum of digits at the correct memory location.    

### Sample Solution

If my ID is 2006A3PS040, the sum of digits is 2+0+0+6+3+0+4+0 = 15.
Here in this case, the sum will be stored at `2006:0040`

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab2.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab2.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab2.obj/t
Run File [lab2.com]: "lab2.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:

```
After the `.com` executable is generated, simply enter `debugx` followed by `lab2.com` to start debugging.

```dosbox
E:\> debugx lab2.com
-r
AX=FFFF BX=0000 CX=0036 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0863 ES=0863 SS=0863 CS=0863 IP=0100 NV UP EI PL ZR NA PE NC
0863:0100 B10C              MOV     CL,0C
-G 0126
AX=2019 BX=0009 CX=0000 DX=0025 SP=FFFE BP=0000 SI=0136 DI=0537
DS=2019 ES=0863 SS=0863 CS=0863 IP=0126 NV UP EI PL ZR NA PE NC
0863:0126 B44C              MOV     AH,4C
-D 2019:0537
2019:0530                        25-B8 FF FF EB 13 80 7E FF        %......~.
2019:0540   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0550   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0560   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0570   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0580   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0590   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:05A0   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:05B0   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
-Q
```

As we can see, the value at location `2019:0537` is **25H** which is equivalent to **37** in decimal. 
> 2+0+1+9+3+7+0+5+3+7 = 37.

> Screenshots are available in the [screenshots](screenshots/) folder