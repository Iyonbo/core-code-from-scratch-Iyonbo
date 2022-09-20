<h1 align="center">Week 6 Challenges (Tuesday)</h1>

## 1. Square(n) Sum.
```
export function squareSum(numbers: number[]): number {
  return numbers.reduce((prev: number, curr: number) => prev + Math.pow(curr, 2),0);
}
```

![alt text](/src/technologies/week6/Tuesday/SuareNSum.jpg "Square^N")


## 2. A Wolf In Sheep's Clothing
```
export function warnTheSheep(queue: string[]): string {
  const wolfPosition = queue.indexOf('wolf');
  if (wolfPosition == queue.length - 1)
    return 'Pls go away and stop eating my sheep';
  return `Oi! Sheep number ${Math.abs(wolfPosition + 1 - queue.length)}! You are about to be eaten by a wolf!`;
}
```

![alt text](/src/technologies/week6/Tuesday/AWolfInSheepssClothing.jpg "Meeeeeeep")
