<h1 align="center">Week 6 Challenges (Tuesday)</h1>

## 1. Square(n) Sum.
```
export function squareSum(numbers: number[]): number {
  return numbers.reduce((prev: number, curr: number) => prev + Math.pow(curr, 2),0);
}
```

## 2. Square(n) Sum.
```
export function warnTheSheep(queue: string[]): string {
  const wolfPosition = queue.indexOf('wolf');
  if (wolfPosition == queue.length - 1)
    return 'Pls go away and stop eating my sheep';
  return `Oi! Sheep number ${Math.abs(wolfPosition + 1 - queue.length)}! You are about to be eaten by a wolf!`;
}
```
