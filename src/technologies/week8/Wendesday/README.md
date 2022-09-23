<h1 align="center">Week challenges (Wendesday)</h1>

## 1. Make the Deadfish Swim
```javascript
/** return the output array and ignore all non-op characters */
export function parse(data: string): number[] {
  let value = 0;
  const result: number[] = [];
  const commands = data.split('');
  commands.forEach((command: string) => {
    switch (command) {
      case 'i':
        value++;
        break;
      case 'd':
        value--;
        break;
      case 's':
        value = Math.pow(value, 2);
        break;
      case 'o':
        result.push(value);
        break;
    }
  });
  return result;
}
```
![alt text](/src/technologies/week8/Wendesday/deadfishSwim.jpg "glup... glup...")

## 2. Duplicate Encoder
```javascript
export function duplicateEncode(word: string) {
  return word
    .toLowerCase()
    .split('').map((a: string, i: number, w: string[]) => {
      return w.indexOf(a) == w.lastIndexOf(a) ? '(' : ')';
    }).join('');
}
```
![alt text](/src/technologies/week8/Wendesday/duplicateEncoder.jpg "Duplicate Encoder")

## 3. Find the odd int
```javascript
export function findOdd(xs: number[]): number {
  //happy coding!
  return (
    xs.find(
      (x: number, i: number, a: number[]) =>
        a.filter((y: number) => y === x).length % 2 === 1
    ) || -1
  );
}
```
![alt text](/src/technologies/week8/Wendesday/oddInt.jpg "That's odd...")

## 4. Wich are in?

```javascript
export function inArray(a1: string[], a2: string[]): string[] {
  var set = new Set<string>()
  for (let a of a1) {
    for (let b of a2) {
      if (b.includes(a)) {
        set.add(a)
      }
    }
  }
  return Array.from(set).sort()
}
```
![alt text](/src/technologies/week8/Wendesday/wichAreIn.jpg "Wich are in?")
