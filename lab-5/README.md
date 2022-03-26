## Lab 5: DOS Interrupts – Basic Keyboard & Display Console Interrupts (continued)

### Task

Write an ALP that does the following 

1. Displays **"enter your name without any space"**
2. Takes in your name without any space and compares with your name alteady stored in memory. [this serves as the `username`]
3. If there is *no match* it should **exit**
4. If there is a *match*, it asks for password saying **"Kindly enter your password"**. The password while being typed by the user should be echoed, but a `*` should be displayed for every character typed by the user (so as to maintain confidentiality, and that person seeing screen can't get to know). KEEP PASSWORD AS your `idnumber`. 
5. If the password is *wrong*, it should display **"wrong password"** and should **exit**
6. If password *matches*, it should display **"Authentication Successful, you are welcome"** followed by your `username`

Your submission should be in the form of `zip` and having 
- Your code 
- A snapshot of your DOSBox screen showing `username`, `password (****...)` and `"Autehntication..... "` message as given in the question. 

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, create the executable using following commands
```
E:\> ml lab5.asm
Microsoft (R) Macro Assembler Version 6.11
Copyright (C) Microsoft Corp 1981-1993.  All rights reserved.

    Assembling: lab5.asm

Microsoft (R) Segmented Executable Linker Version 5.31.009 Jul 13 1992
Copyright (C) Microsoft Corp 1984-1992.  All rights reserved.

Object Modules [.obj]: lab5.obj/t
Run File [lab4.com]: "lab5.com"
List File [nul.map]: NUL
Libraries [.lib]:
Definitions File [nul.def]:
```
After the `.com` executable is generated, simply enter `lab5.com`.

```dosbox
E:\> lab5.com
enter your name without any space
dhruvrawat
Kindly enter your password
* * * * * * * * * * * * * 
Authentication Successful, you are welcome dhruvrawat

E:\>
```
```dosbox
E:\> lab5.com
enter your name without any space
dhruvrawat
Kindly enter your password
* * * * * * * * * * * * * 
wrong password
E:\>
```
```dosbox
E:\> lab5.com
enter your name without any space
dhruvkumar
E:\>
```
> Screenshots are available in the [screenshots](screenshots/) folder