<h1 align="center">Week 6 Challenges (Wednesday)</h1>

## 1. A Rule Of Divisibility By 13.
```
export function thirt(n: number): number {
  let remainders: number[] = [1, 10, 9, 12, 3, 4];
  let result = n
    .toString()
    .split('')
    .reverse()
    .map((c: string, i: number) => parseInt(c) * remainders[i % 6])
    .reduce((p: number, c: number) => (p += c));
  return n == result ? result : thirt(result);
}
```

## 2. Playing With Digits 
```
export class G964 {
  public static digPow = (n: number, p: number) => {
    const sum = n
      .toString()
      .split('')
      .map(Number)
      .reduce((prev: number, curr: number) => prev + Math.pow(curr, p++), 0);
    if (sum % n === 0) return sum / n;
    return -1;
  };
}
```
