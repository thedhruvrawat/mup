## Lab 7: DOS Interrupts – File Access 2

### Task

Write an ALP that does the following 

Create 2 new files. To `File_1`, write your First Name, Last name and ID on 3 different lines. Copy the contents of `File_1` to `File_2`, and display the contents of `File_2`. Finally, close both files. 

Your submission should be in the form of `zip` and having 
- Your code 
- Snapshots of final display of first name, last name and id (i.e. display of modified content of `File_1`)

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab7.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab7.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab7.obj/t
Run File [lab7.com]: "lab7.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab7.com`.

```dosbox
E:\> lab7.com
FILE_1 CONTENTS:
Dhruv
Rawat
2019B3A70537P
FILE_2 CONTENTS AFTER COPY:
Dhruv
Rawat
2019B3A70537P
E:\>
```
> Screenshots are available in the [screenshots](screenshots/) folder