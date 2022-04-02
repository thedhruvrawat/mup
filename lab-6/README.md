## Lab 6: DOS Interrupts – File Access

### Task

Write an ALP that does the following 

Create 2 new files. To `File_1`, write your Full Name, and to `File_2`, write your ID.  Read and append the contents of `File_2` to `File_1`. Display the modified contents of `File_1`. Finally, close both files. 

Your submission should be in the form of `zip` and having 
- Your code 
- Snapshots of final display of name and id (i.e. display of modified content of `File_1`)

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab6.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab6.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab6.obj/t
Run File [lab4.com]: "lab6.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab6.com`.

```dosbox
E:\> lab6.com
FILE_1 INITIAL:
Dhruv Rawat
FILE_1 UPDATED:
Dhruv Rawat
2019B3A70537P
E:\>
```
> Screenshots are available in the [screenshots](screenshots/) folder