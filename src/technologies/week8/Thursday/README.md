<h1 align="center">Week challenges (Thursday)</h1>


## 1. Define generics in TypeScript

We have just learn about generics, an we where creating our own implementation for the Linkedlist structure, but it is incomplete, you task is to finish the missing methods.
- addFirst: Adds a new node at the start of the structure
- removeLast: Removes the last node of the structure

### Class and constructor
```javascript
export default class Nodo<T> {
  public next: Nodo<T> | null = null;
  private dato: T;
  
  //We create a getter
  get value(): T {
    return this.dato;
  }
  //We defined the constructor
  constructor(dato: T) {
    this.dato = dato;
  }
}
```

### Code solution:
```javascript
import Nodo from './Nodo';

export class LinkedList<T> {
  private head: Nodo<T> | null = null;
  private length: number = 0;

  get size(): number {
    return this.length;
  }

  // First In First Out (FIFO)
  public add(value: T): void {
    if (this.head == null) {
      this.head = new Nodo(value);
    } else {
      let node = this.head;
      while (node.next !== null) {
        node = node.next;
      }
      node.next = new Nodo(value);
    }
    this.length++;
  }

  public remove(): void {
    if (this.head !== null) {
      this.head = this.head.next;
      this.length--;
    }
  }

  // Last In First Out (LIFO)
  public addFirst(value: T) {
    if (this.head === null) {
      this.add(value);
    } else {
      let node = new Nodo(value);
      node.next = this.head;
      this.head = node;
      this.length++;
    }
  }

  public removeLast(): void {
    if (this.head !== null) {
      let node = this.head;
      let previous: Nodo<T> = node;
      while (node.next !== null) {
        previous = node;
        node = node.next;
      }
      previous.next = null;
      this.length--;
    }
  }

  public toString(): string {
    if (this.head === null) return '[]';
    let representation = '';
    let node = this.head;
    while (node.next !== null) {
      representation = `${representation}${JSON.stringify(node.value)},`;
      node = node.next;
    }
    representation = `${representation}${JSON.stringify(node.value)}`;
    representation = `[${representation}]`;
    return representation;
  }
}
```

## 2. Define generics in TypeScript

I've finished the exercise from Microsoft, learning how to define generics in TypeScript. You should, learn it too [here](https://docs.microsoft.com/en-us/learn/modules/typescript-develop-typed-functions/).

![alt text](/src/technologies/week8/Thursday/exerciseCompletedGenerics.jpg "I did it!")
![alt text](/src/technologies/week8/Thursday/KnowledgeCheckThursday.jpg "Knowledge, check!")
