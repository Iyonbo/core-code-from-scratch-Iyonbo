<h1 align="center">Week challenges (Monday)</h1>

## Input/Output playground

```javascript
import Input from './Input';
export class Main {
  async start() {
    // Get a single input prompt
    let input = await Input.getInput('Where are you from?');
    console.log(input);
  }
}
```
![alt text](/src/technologies/week7/Tuesday/inputoutput.jpg "Input/Output")
