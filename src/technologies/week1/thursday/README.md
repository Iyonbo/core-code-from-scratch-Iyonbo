<h1 align="center">Week challenges (Thursday)</h1>

## 1. Print special numbers

In this exercise we use an iterative flow control to be able to print all the even numbers in the range of numbers from 0 to 100.

```javascript
  //We create a new variable, we give the value of 0.
  var evenNumber = 0;
  
  /*We use a flow control called while, this allows us to execute the
  logic within until it become false.*/
  while (evenNumber <= 100) {
    //Using the remainder operator returns the left over when one operand is divided by a second operand.
    if (evenNumber % 2 == 0) console.log(evenNumber);
    evenNumber++;
  }
```

## 2. Bad Code exercise

The code shown below is not working in the right way, as a task you must find the error made by the developer who programmed this code and correct it, for this exercise you must explain what the error is and place the correct code.

```javascript
    var cond = false;

    if ((cond = true)) {
      console.log('The cond variable is true');
    } else {
      console.log('The cond variable is false');
    }
```

**SOLUTION:**

The error in the code was in the if control. When you use the condition  ***cond = true*** you're assigning to the variable ***cond** the value of ***true***, by the time it execute the expression it will execute the first statement (***The cond variable is true***) instead of the second statement (***The cond variable is false***).
<br>Also in the ***if*** you don't need to use double parentheses, because you are using a simple condition.

```javascript
    var cond = false;

    if (cond == true) {
      console.log('The cond variable is true');
    } else {
      console.log('The cond variable is false');
    }
```

## 3. Bad Code 2 exercise

You must create the code that follows the following logic, if the given number is 100, take this number as special and show the following message: "This is a special number!", but if the number is less than 1000, multiple of 10 and different from 100, you must show the following message: "This number is almost special". if none of the given conditions are met show the following message: "Just a regular number". Another developer was trying to program the logic, but apparently couldn't, you need to fix the code to work properly

```javascript
    var n = 100;

    if (n == 100) {
      console.log('This is a special number!');
    }
    if (n < 1000) {
      console.log('');
    } else {
      console.log('Just a regular number');
    }
    if (n % 10 == 0) {
      console.log('This number is multiple of 10');
    }
```

**SOLUTION:**

```javascript
    var n = 110;

    if (n == 100) {
      console.log('This is a special number!');
    }
    else if (n < 1000 && n != 100 && (n % 10 == 0) ) {
      console.log('This number is almost special');
    } 
    else {
      console.log('Just a regular number');
    }
```
