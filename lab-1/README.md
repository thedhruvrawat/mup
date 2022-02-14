## Lab 1: Introduction to DEBUG & DEBUGX

### Task

1. Create a `.txt` file that contains your first name in small letter followed by mup, and prefixed with the number of characters in your first name. For example if your name is **aditya**, then he content of the file should be
```txt
6adityamup
```
2. Load the value `3C` into `AX`.
3. Load the file you created in step 1 using the `L` command into code segment  (assume/use offset to code segment as `0300h`)
4. Run the code using `G` command
5. Copy the value of the register `AL` into memory location `300h` (note it is not AX, but AL)
6. Display the contents of memory location starting from `300h`

### Sample Solution

Here in this case if the student's name was aditya, the result should be `<adityamup`  (where `<` is string equivalent of `3C`, so in the memory at location 300 using d command, you will see 3C stored).

### Code
Mount the directory containing the `MASM` folder in **DOSBOX**.
```dosbox
Z:\> mount e e:\masm\masm611\bin
Drive E is mounted as local directory e:\masm\masm611\bin

Z:\> e:
```
After mounting the directory, simply enter `debugx` to start debugging.

```dosbox
Z:\> debugx
-A
0859:0100 MOV AX,3C
0859:0103
-N muplab1.txt
-L 300
-D 300
0859:0300   35 64 68 72 75 76 6D 75-70 00 00 00 00 00 00 00 5dhruvmup.......
0859:0310   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0320   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0330   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0340   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0350   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0360   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0370   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
-G 0100
AX=0000 BX=0000 CX=0000 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0859 ES=0859 SS=0859 CS=0859 IP=0100 NV UP EI NG NZ NA PE NC
0859:0100 B83C00            MOV     AX,003C
-G 0103
AX=003C BX=0000 CX=0009 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0859 ES=0859 SS=0859 CS=0859 IP=0103 NV UP EI NG NZ NA PE NC
0859:0103 0000              ADD     [BX+SI],AL                  DS:0000=CD
-A
0859:0103 MOV [300],AL
0859:0106
-G 0103
AX=003C BX=0000 CX=0009 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0859 ES=0859 SS=0859 CS=0859 IP=0103 NV UP EI NG NZ NA PE NC
0859:0103 A20003            MOV     [0300],AL                   DS:0300=35
-G 0106
AX=003C BX=0000 CX=0009 DX=0000 SP=FFFE BP=0000 SI=0000 DI=0000
DS=0859 ES=0859 SS=0859 CS=0859 IP=0106 NV UP EI NG NZ NA PE NC
0859:0103 0000              ADD     [BX+SI],AL                  DS:0000=CD
-D 300
0859:0300   3C 64 68 72 75 76 6D 75-70 00 00 00 00 00 00 00 <dhruvmup.......
0859:0310   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0320   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0330   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0340   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0350   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0360   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
0859:0370   00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00 ................
-Q
```

> Screenshots are available in the [screenshots](screenshots/) folder