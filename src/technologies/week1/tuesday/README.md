<h1 align="center">Week challenges (Tuesday)</h1>

## 1. Interpreted And Compiled Programming Languages
<p>
We are going to explain the difference between the interpreted an compiled programming languages.</br>
In order to understand the differences, we have to know that every program is a set of instructions, this instructions are essential for the program to understand what it needs to do and how to do it. To that end the computer need to know the language of the instructions used.</br>
</p>
<b>Then, what's the difference?</b>
<p>
For instance, in the <b><i>compiled</b></i> language there's a program called "compiler" who recive a file in a specific language and he <b>translate</b> that filea creating anothe one, this second contains a translation from that specific language to a machine code. This one understandable for the machine.</br>
With this in mind, the machine can understand the new file that it recive and execute code that have the instructions within.</br>
</p>

<p>
On the other hand, the <b><i>interpreted</b></i> language doesn't compile the file, it takes a copy of the file with the code and it's a program that read and execute the instructions in the code. This is translated on the go while it reads it, he translates it.
</p>

<p>
They're both used for the same outcome, to execute the instructions that are defined in the code. Yet they are used depending on the characteristicas of each. For instance, the <b><i>interpreted</b></i> execute the code for each line as it reads it. The flexibility it provides helps to make changes in the lines you want and the programming language identify it as it happens. However, the <b><i>compiled</b></i> programming language translate de instructions to machine code that the processor can execute, coupled with having mor control over hardware generally with de memory management. We get a faster execution and more efficient. Nevertheless, when we make a change the <b><i>compiler</b></i> will need to rebuild the program.
</p>

<p>
Here is a diagram that illustrate how each one works.</br>
</p>

![alt text](/src/technologies/week1/tuesday/compiler_vs_interpreted.png "Hope it works")

<sub>
  <b>Source:</b></br>
  Compiled vs. Interpreted programming languages. https://www.altexsoft.com/blog/python-pros-and-cons/
</sub>

## 2. Is Java compiled or interpreted
<i><b> To be, or not to be, that is the question. </b></i>
<p>
Computers read instructions through machine language <i>(binary)</i>. For a developer a programming language is needed to write  the instructions in a language understandable to humans, there are low and high level languages, depending on this is easier to understand for humans or is closer to the machine language it can be understandable however, it could be complicated to understand.
</p>

As explained previosly in the [first item](#1-interpreted-and-compiled-programming-languages "Back to the future") the code that is written in specific language is compiled to create the file understandable by the machine. The compiler review the syntax of the code optimizing it for its execution. On the other hand, the interpreter executes the code directly as its reading.

<p>
Having said that, the Java programming language is considered <b>both compiler and interpreter</b>. <i>Why? you may ask.</i> This is because Java uses a two-step compilation process, the code written in it is first compiled into bytecode (a more abstract code than machine code, each operation code is one byte long). This is then executed by JVM (Java Virtual Machine) using the JIT Compilation (Just-in-Time) method.
Now, based on this we have already declared that Java performs a compilation process, so it is recognized as a compiler. So what about the interpreter? Thanks to JIT Compilation, Java can, after its compilation to bytecode, continuously analyze the executed code and identify the code segments that may change. And that is why it is also considered an interpreter.
</p>

<p>
To give an illustration, let's look at the image:
</p>

![alt text](/src/technologies/week1/tuesday/javaCompilerInterpreted.png "Interesting...")

<sub>
   <b>Source:</b></br>
   Is Java a Compiled or an Interpreted programming language? https://stackoverflow.com/questions/1326071/is-java-a-compiled-or-an-interpreted-programming-language 
</sub>

## 3. Pseudocode Currency Converter exercise

<p>
Next we're going to illustrate how a <b>pseudocode</b> works, in this scenario its used to convert dollars to bitcoin. First things first, a <b>pseudocode</b> is an informal way of writing programs, it's a <i>"fake code"</i> that represent the sequence of actions and instructions in a form where humans can easily undestand. Using pseudocode gives the benefit of having a syntax and coding pattern that make a better perspective of what we want to solve.
</p>

<p>
Now, back to the problem, here's the <b>pseudocode</b> to convert dollars(USD) to bitcoin(BTC) or the other way, BTC to USD.<br>
</p>

    1. START
    2. PRINT("Wich trade do you want to make?")
    3. PRINT("1. USD to BTC")
    4. PRINT("2. BTC to USD")
    5. USDtoBTC <-- GET from (https://www.binance.com/es/convert)
    6. USD <-- 0.00
    7. BTC <-- 0.00
    8. Option <-- GET
    9. switch (option)
          case 1:
            PRINT("How many USD do you trade?")
            USD <-- GET
            BTC <-- USD * USDtoBTC
            PRINT("You have trade " + BTC + " BTC.")
          break;
          
          case 2:
            PRINT("How many BTC do you trade?")
            BTC <-- GET
            USD <-- BTC / USDtoBTC
            PRINT("You have trade " + USD + " USD.")
          break;
          
          defaul:
            PRINT("The option you choose doesn't exist.")
            go to START;
       
    10. PRINT("Thanks for using our service.")
    11. END

## 4. Learn about High and Low level languages

<p>
  A programming languages are defined as low-level or high-level languages, the level indicates the amount of abstraction between programming languages and machine languages. This, as we defined before, are a set of instructiones executed by machines.
</p>

| Low-Level | High-Level |
| ----------- | ----------- |
| Hard for humans to read, write and modify. | Easy for humans to read, write and modify. |
| Faster than high-level | Slower in perfomnace |
| Direct memory management | These are interpreted or compiled |
| Provides little abstraction | Have dynamic constructs |
