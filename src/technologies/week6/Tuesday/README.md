<h1 align="center">Week 6 Challenges (Tuesday)</h1>

## 1. Square(n) Sum.
```
export function squareSum(numbers: number[]): number {
  return numbers.reduce((prev: number, curr: number) => prev + Math.pow(curr, 2),0);
}
```

![SuareNSum](https://user-images.githubusercontent.com/70680974/191160036-bf2b0d54-519c-40fb-ae9f-28f89fa190d1.jpg)

## 2. A Wolf In Sheep's Clothing
```
export function warnTheSheep(queue: string[]): string {
  const wolfPosition = queue.indexOf('wolf');
  if (wolfPosition == queue.length - 1)
    return 'Pls go away and stop eating my sheep';
  return `Oi! Sheep number ${Math.abs(wolfPosition + 1 - queue.length)}! You are about to be eaten by a wolf!`;
}
```

![AWolfInSheepssClothing](https://user-images.githubusercontent.com/70680974/191159990-b55a46ed-cae6-4e51-b003-027d16898293.jpg)
