<h1 align="center">Week challenges (Wednesday)</h1>

##1. Build Tower

```javascript
export const towerBuilder = (nFloors: number): string[] => {
  if (nFloors === 1) return ['*'];
  const tower: string[] = [];
  const maxNumber = 2 * nFloors - 1;
  for (let i = 1; i <= nFloors; i++) {
    tower.push(
      `${' '.repeat(nFloors - i)}${'*'.repeat(2 * i - 1)}${' '.repeat(
        nFloors - i
      )}`
    );
  }
  return tower;
};
```
![alt text](/src/technologies/week7/Wednesday/BuildTower.jpg "LoTR: The Two towers")

##2. Meeting

```javascript
export function meeting(s: string): string {
  return s
    .toUpperCase()
    .split(';')
    .map((n: string) => '(' + n.split(':').reverse().join(', ') + ')')
    .sort()
    .join('');
}
```
![alt text](/src/technologies/week7/Wednesday/meeting.jpg "Hi, my name is...")
