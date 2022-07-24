<h1 align="center">Week challenges (Wednesday)</h1>

## 1. Exercise. Your date of birth in the matrix

<p>
  <b>Binary</b> code is numbering scheme in wich there are only <b>1's</b> and <b>0's</b> and is the basis for evey computing systems. These systems use this code to understand operational intructions and user input and to present an output to the user. Computers represent numbers using binary code inside CPU and RAM. These digital numbers are electrical signals that are either on or off inside the CPU or RAM.<br><br>
  
  At this time, we know now what <b>binary</b> is and that it's possible to represent a decimal number in binary format. For the excercise we're going to find how our date of birth is in binary format. So let's begin.
</p>

<p>
  First and foremost, we define our date of birth. In my case it's July twenty-second of the year 1995.<br>
  With that in mind we proceed to find our date, first we begin with the month:
</p>

```
  Month: 7
    2^0 = 1
    2^1 = 2
    2^2 = 4
      7-4 = 3
      3-2 = 1
      1-1 = 0
```

| 128 |  64 |  32 |  16 |  8  |  4  |  2  |  1  |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  0  |  0  |  0  |  0  |  0  |  1  |  1  |  1  |

  Decimal: 7    Binary: 00000111

---
```
  Day: 22
    2^0 = 1
    2^1 = 2
    2^2 = 4
    2^3 = 8
    2^4 = 16
      22-16 = 6
      6-4   = 2
      2-2   = 0
```

| 128 |  64 |  32 |  16 |  8  |  4  |  2  |  1  |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  0  |  0  |  0  |  1  |  0  |  1  |  1  |  0  |

  Decimal: 22    Binary: 00010110

---
```
  Year: 1995
    2^0  = 1
    2^1  = 2
    2^2  = 4
    2^3  = 8
    2^4  = 16
    2^5  = 32
    2^6  = 64
    2^7  = 128
    2^8  = 256
    2^9  = 512
    2^10 = 1024 
      1995-1024 = 971
      971-512   = 459
      459-256   = 203
      203-128   = 75
      75-64     = 11
      11-8      = 3
      3-2       = 1
      1-1       = 0
```

| 1024 | 512 | 256 | 128 |  64 |  32 |  16 |  8  |  4  |  2  |  1  |
| ---- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|   1  |  1  |  1  |  1  |  1  |  0  |  0  |  1  |  0  |  1  |  1  |

  Decimal: 1995    Binary: 11111001011
  
## 2. MIPS exercise.

**1. First Exercise. A program that adds two numbers given by the user.**

```assembly
 .data
	      number1: .asciiz "\nGive us the first number: "
	      number2: .asciiz "\nGive us the second number: "
	      result_message: .asciiz "\nEl resultado es: "
  .text
	      main:
              li $v0, 4
              la $a0, number1
              syscall

              li $v0, 5
              syscall

              move $t0, $v0

              li $v0, 4
              la $a0, number2
              syscall

              li $v0, 5
              syscall

              move $t1, $v0
		
	            add $t2, $t0, $t1	
	      
	            li $v0, 4
              la $a0 result_message
              syscall
	      	      
              li $v0, 1
              move $a0, $t2
              syscall
```
The result of the program:<br>

![alt text](/src/technologies/week1/wendesday/MIPS_Calculator.jpg "It's alive!")

If you want to download the file, you can get it for **FREE** [here](/src/technologies/week1/wendesday/mips_addition.asm "Yeah it's free")

---

**2. Second Exercise. A program that display your name.**
<br>But it has a twist. The program ask the user what's his name, so it's more fun.

```assembly

  .data
      name_input: .asciiz	 "\nHello, what is your name? "
      name_welcome: .asciiz	"\nWelcome  "
      name: .space	20	
      name_meet: .asciiz	"Nice to meet you!"

  .text
      main:
      li $v0, 4
      la $a0, name_input
      syscall

      li $v0, 8
      la $a0, name
      li $a1, 40
      syscall

      li $v0, 4
      la $a0, name_welcome
      syscall

      li $v0, 4
      la $a0, name
      syscall

      li $v0, 4
      la $a0, name_meet
      syscall

      li $v0, 10
      syscall
```

The result of the program:

![alt text](/src/technologies/week1/wendesday/mips_name.jpg "Hello put_your_name_here!")

If you want to download this file, you can get it [here](/src/technologies/week1/wendesday/mips_name.asm "Yes, again. It's free")
