## Lab 4: DOS Interrupts – Basic Keyboard & Display Console Interrupts

### Task

Write an ALP which asks the user to input their ID number and then displays it on the next line in an inverted order (i.e. reverse order). Please submit your assignment as a `.zip` containing, 
- `.asm` code 
- A screenshot showing the final result after execution of the ALP  

### Sample Solution

If the user types in his id as 2006A3PS040, it should display 040SP3A6002.

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab4.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab2.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab4.obj/t
Run File [lab4.com]: "lab4.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab4.com`.

```dosbox
E:\> lab4.com
ENTER YOUR BITS ID: 2019B3A70537P
REVERSED ID: P73507A3B9102
```
> Screenshots are available in the [screenshots](screenshots/) folder