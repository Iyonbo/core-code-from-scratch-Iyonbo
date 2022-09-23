<h1 align="center">Week challenges (Tuesday)</h1>

## Develop typed functions by using TypeScript

I've finished the exercise from Microsoft, learning how to develop typed functions in TypeScript. You should, learn it too [here](https://docs.microsoft.com/en-us/learn/modules/typescript-develop-typed-functions/).

![alt text](/src/technologies/week8/Tuesday/ExcerciseCompletedInterface.jpg "I did it!")
![alt text](/src/technologies/week8/Tuesday/KnowledgeCheckTuesday.jpg "Knowledge, check!")

## Abstract Classes

An abstract class is like a mix of implementing an interface and extending a class in one step. You can create classes with optional methods and properties, but you can also specify which methods and properties must be implemented in derived classes. Note that although the rules of abstraction are enforced, your base class itself can still implement any interface.

Use the *abstract* keyword to indicate a class contains *abstract* methods or properties.

### Example:
```javascript
abstract class Animal {
    abstract name: string
    age: number

    constructor(age: number) {
        //this.name = name // this must now be assigned in the derived class instead
        this.age = age
    }

    feed(food: string, amount: number): void {
        console.log(
            'Feeding ' +
                this.name +
                ' the ' +
                this.constructor.name +
                ' ' +
                amount +
                ' kg of ' +
                food
        )
    }
}

class Cat extends Animal {
    name: string
    constructor(name: string, age: number) {
        super(age)
        this.name = name
    }
}

class Dog extends Animal {
    name: string
    constructor(name: string, age: number) {
        super(age)
        this.name = name
    }
}

const CAT = new Cat('Cosmo', 8)
const DOG = new Dog('Rusty', 12)
CAT.feed('Fish', 0.1)
DOG.feed('Beef', 0.25)
```
