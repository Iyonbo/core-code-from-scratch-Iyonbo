<h1 align="center">Week challenges (Monday)</h1>

## OOP in TypeScript

We're going to define some terms that are necesary to understand better OPP. This are key-words for any one who starts into OPP programming.

1. Abstraction: This handles the details from the user, letting him to use more complex logic. This hide the internal data and implementation from the outer world.
2. Inheritance: Allows the code to be re-usable, then it doesn't have to be writen again. 
3. Polymorphism: This means that any class who have a father can take any form of class in its parent hierarchy.
4. Encapsulation: The action of enclosing certain properties into one entity, being this the object.
5. Class: It's a blueprint for creating objects with a particular data structure, variables and methods.
6. Object: Entity that contanins the properties from a certain class.
7. Instance: The assigned data along the object.
8. Interface: Allows to specify what methods a class should implement, making it easy to use a variety classes.
9. Access Modifiers: The properties and methods can have access to different modifiers, being this *public*, *protected* and *private*.
<br><br>9.1. public - the property or method can be accessed from everywhere. This is default.
<br>9.2. protected - the property or method can be accessed within the class and by classes derived from that class.
<br>9.3. private - the property or method can ONLY be accessed within the class.
13. Constructors: Is a special method called whenever you create an objecto useing *new* key-word.

## Example of OOP
1. Object
```javascript
class videogame{
    name: string;
    genre: string;
    PG: number;
    releaseYear: number;
}
```

2. Encapsulation
```javascript
class videogame{
    public name: string;
    protected genre: string;
    public PG: number;
    public releaseYear: number;
}
```

3. Access Modifiers
```javascript
class videogame{
    public name: string;
    protected genre: string;
    public PG: number;
    public releaseYear: number;
}
```

4. Instances
```javascript
constructor(name: string, genre: string, PG: number, releaseYear: number) = {
    this.name = name;
    this.genre = genre;
    this.PG = PG;
    this.releaseYear = releaseYear;
    return 'This game is called' ${this.name}, ' and its frome the genre ' ${this.gnre}, 
           ' classified into PG:' ${this.PG}, ' and its release year is' ${this.releaseYear}
}
```

5. Interfaces
```javascript
interface videogame{
    name: string;
    genre: string;
    PG: number;
    releaseYear: number;
}

let buyingGame: TheWitcher3 = {
    name: 'The Withcer 3',
    genre: 'Action',
    PG: 16,
    releaseYear: 2015,
}

interface TheWitcher3 extends videogame{
    dlc: 'Blood and wine',
    console: 'PS4';
}
```
