## Lab 3: Introduction to **MASM** (continued)

### Task

Write an ALP to store your full name as a string in location `NAME` and move the letters inside the array to a location `FLIP` in opposite order. Please make use of String operations to do so (i.e. flipping of the string). Address of `FLIP` should be taken as `{Year}:{ID_number}`. Please submit your assignment as a `.zip` containing, 
- `.asm` code 
- screenshot showing the content at location `FLIP`    

### Sample Solution

If your name is `Ram Mohan` then the location `FLIP` will store `nahoM maR`. If my ID is 2006A3PS040, then the memory location will be `2006:0040.`

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab3.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab3.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab3.obj/t
Run File [lab3.com]: "lab3.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:

```
After the `.com` executable is generated, simply enter `debugx` followed by `lab2.com` to start debugging.

```dosbox
E:\> debugx lab3.com
-r
AX=FFFF BX=0000 CX=0047 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0863 ES=0863 SS=0863 CS=0863 IP=0100 NV UP EI PL ZR NA PE NC
0863:0100 8D363001          LEA     SI,[0130]           DS:0130=6844 
-G 012B
AX=013C BX=2019 CX=0000 DX=0000 SP=FFFE BP=0000 SI=0147 DI=0542
DS=0863 ES=2019 SS=0863 CS=0863 IP=012B NV UP EI PL ZR NA PO NC
0863:012B B44C              MOV     AH,4C
-D 2019:0537
2019:0530                        74-61 77 61 52 20 76 75 72        tawaR vur
2019:0540   68 44 0B 7E FE 00 00 00-00 00 00 00 00 00 00 00 hD..~...........
2019:0550   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0560   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0570   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0580   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:0590   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:05A0   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
2019:05B0   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
-Q
```

As we can see, the value at location `2019:0537` is **tawaR vurhD** which is reverse of **Dhruv Rawat**.

> Screenshots are available in the [screenshots](screenshots/) folder