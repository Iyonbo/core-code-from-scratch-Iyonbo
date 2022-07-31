<h1 align="center">Week challenges (Monday)</h1>

## 1. Statement "if...else"

For this condition, the if statement execute a specified condition when is truth or executes another condition if the statement is false, this assemble with questioning. It works better when "you need to answer something", an example be "What happen if the coin get tails?, what happens if not?".<br>
You can use the else statement, when there's various statements that only one can be executed for the specified condition for each.<br><br>
An example in Javascript is:
```javascript
      //Function to validate if the number is positive (+) or negative (-)
      function testNumber(number) {
        let result;
        if (number > 0) {
          result = 'positive';
        } else {
          result = 'NOT positive';
        }
        
        return result;
      }
      
      console.log(testNumber(-5)); //NOT positive
```

## 2. Statement "for"
The "for" statement executes a loop consisting of three optional expressions, enclosed in parentheses and separated by semicolons, followed by the statement (usually a block statement) to execute within the loop.
We use this statement when we need know how many times it's going to be executed or when you need to map an array, for example.

```javascript
      //Function that adds the numbers from 0 to 8.
      //0+1+2+3+4+5+6+7+8
      function sumNumbers(number) {
        let result;
        for (let i = 0; i < 9; i++) {
            result += i;
        }
        return result;
      }
      
      console.log(sumNumbers); //result: 36
```

## 3. Statement "while"
The "while" statement creates a loop that executes a specific statement as long as the test condition is true. Evaluate the condition before executing the statement. To put it another way, this conditions will execute until the condition no longer satisfy.<br><br>
An example in Javascript is:

```javascript
      //This will count until it gets to three.
      let number = 0;

      while (number < 3) {
        n++;
      }

      console.log(number); // expected output: 3
```

## 4. Functions in Javascript
A JavaScript function is a block of code designed to perform a particular task. The function is executed when "something" invokes it, its commonly said that you call it.<br><br>
An example in Javascript is:

```javascript
      //Function is called, return value will end up in addition
      let addition = myFunction(4, 3);
      
      // Function returns the addition of a(4) and b(7)
      function myFunction(a, b) {
        return a + b;
      }
```
