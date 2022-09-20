<h1 align="center">Week 6 Challenges (Thursday)</h1>

## 1. Declare and instantiate classes in TypeScript
We have done the classes given by Microsoft, learning to declare and instantiate clases.
![alt text](/src/technologies/week6/Thursday/classesInTypeScript.jpg "Learning a little more")

## 2. Tile
### Description

In the board game Scrabble2, each tile contains a letter, which is used to spell words, and a score, which is used to determine the value of words.

1. Write a definition for a class named `Tile` that represents Scrabble tiles. The instance variables should be a `string` named `letter` and an `number` named `value`.
2. Write a constructor that takes parameters named `letter` and `value` and initializes the instance variables.
3. Write a method named `printTile` that prints the instance variables in a `reader-friendly` format (not the { ... } format way).
4. Don't worry you don't have to check if the letter is no more than one String length.
5. You can use this `Main` class to test your code.

SOLUTION:
```
export default class Tile {
  letter: string;
  value: number;

  constructor(letter: string, value: number) {
    this.letter = letter;
    this.value = value;
  }

  printTile() {
    console.log(`
        ===========================
          Letter: ${this.letter}
          Value: ${this.value}
        ===========================
    `);
  }
}
```

## 3. Time
### Description

You have been hired by a brand of digital watches to be able to create the functionality of keeping track of time, for this you have been asked to do the following:

1. Write a definition for the class name `Time` this class would be use to build a digital clock. This class should have 3 attributes of type number. `hour`, `minute` and `second`.
2. Write a constructor that takes parameters named `hour`, `minute` and `second` and initializes the instance variables.
3. Write a method called `getInSeconds` that returns a number representing the actual time in the instance represented in seconds.
4. Write a method named `printTime` that prints the instance variables in a `reader-friendly` format (not the { ... } format way).

SOLUTION:
```
export default class Time {
  hour: number;
  minute: number;
  second: number;

  constructor(hour: number, minute: number, second: number) {
    this.hour = hour;
    this.minute = minute;
    this.second = second;
  }

  printTime() {
    console.log(`
        ===========================
          Hours: ${this.hour}
          Minutes: ${this.minute}
          Seconds: ${this.second}
        ===========================
    `);
  }

  getInSeconds(): number {
    const minutes = this.hour * 60 + this.minute;
    return minutes * 60 + this.second;
  }
}
```

## 4. Rational
### Description

A rational number is a number that can be represented as the ratio of two integers. For example, 2/3 is a rational number, and you can think of 7 as a rational number with an implicit 1 in the denominator (7/1). For this assignment, you are going to write a class definition for rational numbers.

1. Create a new class named Rational. A Rational object should have two number instance variables to store the `numerator` and `denominator`.
2. Write a constructor for your class that takes two arguments and that uses them to initalize the instance variables.
3. Write a method called printRational that prints the object in some reasonable format.
4. Write a method called invert that inverts the number by swapping the numerator and denominator. This method should modify the instance variables.
5. Write a method called toFloat that converts the rational number to a floating-point number and returns the result. This method is a [pure function](https://betterprogramming.pub/what-is-a-pure-function-3b4af9352f6f) it does not modify the object.
6. Write method named reduce that reduces a rational number to its lowest terms by finding the greatest common divisor (GCD) of the numerator and denominator and dividing through. This method should modify the instance variables. To calculate the GCD you can search for `Euclidian Algorithm: GCD`.

SOLUTION:
```
export default class Rational {
  numerator: number;
  denominator: number;

  constructor(numerator: number, denominator: number) {
    this.numerator = numerator;
    this.denominator = denominator;
  }

  printRational() {
    console.log(`${this.numerator} / ${this.denominator}`);
  }

  invert() {
    [this.numerator, this.denominator] = [this.denominator, this.numerator];
  }

  toFloat(): number {
    return this.numerator / this.denominator;
  }

  gcd(n: number, d: number): number {
    if (d == 0) return n;
    return this.gcd(d, n % d);
  }

  reduce() {
    const gcd = this.gcd(this.numerator, this.denominator);
    this.numerator = this.numerator / gcd;
    this.denominator = this.denominator / gcd;
  }
}
```
