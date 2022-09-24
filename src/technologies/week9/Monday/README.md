<h1 align="center">Week challenges (Monday)</h1>

## TicTacToe

### Main.ts
```javascript
import TicTacToe from './models/TicTacToe';
import { Input, UserOption } from './models/Input';

export default class Main {
  gameMenu = [
    { option: 1, message: 'Start game' },
    { option: 2, message: 'Show last game' },
    { option: 3, message: 'Exit' },
  ];

  async start() {
    let option = -1;
    let input: UserOption;
    let tickTackToe = new TicTacToe();
    while (option !== 3) {
      input = await Input.getSelect('=====TickTackToe=====', this.gameMenu);
      option = input.data;
      switch (option) {
        case 1:
          await tickTackToe.startGame();
          break;
        case 2:
          tickTackToe.showHistory();
          break;
        case 3:
          console.log(`\n
          *******************************************************
          ===========================================
                Enjoy your day!
          ===========================================
          *******************************************************\n`);
          break;
      }
    }
  }
}
```

### Board.ts
```javascript
import Player from './Player';

type BoardValues = -1 | 0 | 1;
export type UserOption = 0 | 1;
export class Board {
  private board: BoardValues[][] = [];
  private positionMap: Map<number, [number, number]> = new Map();
  private playerOne: string = '🐲';
  private playerTwo: string = '🐼';

  constructor(private rows: number, private columns: number) {
    this.createBoard();
  }

  private createBoard(): void {
    this.board = [];
    this.positionMap = new Map();
    let indicator = 1;
    for (let i = 0; i < this.rows; i++) {
      this.board.push([]);
      for (let j = 0; j < this.columns; j++) {
        this.board[i].push(-1);
        this.positionMap.set(indicator, [i, j]);
        indicator++;
      }
    }
  }

  private checkBoardCellToDisplay(cellValue: number): string {
    if (cellValue === 1) return this.playerOne;
    return this.playerTwo;
  }

  clearBoard(): void {
    for (let i = 0, rowslenght = this.board.length; i < rowslenght; i++) {
      for (let j = 0, colslenght = this.board[i].length; j < colslenght; j++) {
        this.board[i][j] = -1;
      }
    }
  }

  checkValidCellValue(cellNumber: number): boolean {
    return !(typeof this.positionMap.get(cellNumber) === 'undefined');
  }

  checkFullBoard(): boolean {
    let full = true;
    for (let i = 0, rowslenght = this.board.length; i < rowslenght; i++) {
      for (let j = 0, colslenght = this.board[i].length; j < colslenght; j++) {
        if (this.board[i][j] === -1) full = false;
      }
    }
    return full;
  }

  setBoardCellValue(cellNumber: number, value: UserOption): boolean {
    let position = this.positionMap.get(cellNumber)!;
    if (this.board[position[0]][position[1]] !== -1) return false;
    this.board[position[0]][position[1]] = value;
    return true;
  }

  getBoardCellValue(cellNumber: number): BoardValues {
    let position = this.positionMap.get(cellNumber)!;
    return this.board[position[0]][position[1]];
  }

  displayBoard(playerOne: Player, playerTwo: Player): string {
    let indicator = 1;
    let displayedBoard = '';
    for (let i = 0, rowslenght = this.board.length; i < rowslenght; i++) {
      displayedBoard += '\n';
      for (let j = 0, colslenght = this.board[i].length; j < colslenght; j++) {
        displayedBoard += `  ${
          this.board[i][j] === -1
            ? `${indicator} `
            : this.checkBoardCellToDisplay(this.board[i][j])
        }  |`;
        indicator++;
      }
      displayedBoard = displayedBoard.slice(0, -1);
      if (i !== rowslenght - 1) {
        displayedBoard += '\n ------------------';
      }
    }
    return `\n============================\n${playerOne.name}: ${this.playerOne}\n${playerTwo.name}: ${this.playerTwo}\n============================\n${displayedBoard}\n`;
  }
}
```
### Input.ts
```javascript
import { prompt } from 'enquirer';
export type UserInput = { data: string };
export type UserFormInput = { data: any };
export type UserOption = { data: number };
export type UserOptionById = UserInput;
export type UserConfirm = { data: boolean };
export type Choice = { name: string; message: string };
export type SelectChoice = { option: number; message: string };
type Choices = Choice[] | string[];
type UserOptionAux = { data: string };
type SelectChoices = SelectChoice[];

export class Input {
  static async getInput(message: string): Promise<UserInput> {
    const input: UserInput = await prompt({
      type: 'input',
      name: 'data',
      message: message,
    });
    return input;
  }

  static async getForm(
    message: string,
    choices: Choices
  ): Promise<UserFormInput> {
    const input: UserFormInput = await prompt({
      type: 'form',
      name: 'data',
      message: message,
      choices: choices,
    });
    return input;
  }

  static async getSelect(
    message: string,
    choices: SelectChoices
  ): Promise<UserOption> {
    const input: UserOptionAux = await prompt({
      type: 'select',
      name: 'data',
      message: message,
      choices: choices.map((choice: SelectChoice) => ({
        name: choice.option.toString(),
        message: choice.message,
      })),
    });
    return { data: Number(input.data) };
  }

  static async getSelectById(
    message: string,
    choices: Choice[]
  ): Promise<UserOptionById> {
    const input: UserOptionById = await prompt({
      type: 'select',
      name: 'data',
      message: message,
      choices: choices,
    });
    return input;
  }

  static async getConfirm(message: string): Promise<UserConfirm> {
    const input: UserConfirm = await prompt({
      type: 'confirm',
      name: 'data',
      initial: false,
      message: message,
    });
    return { data: input.data };
  }
}
```
### Player.ts
```javascript
export default class Player {
  get name() {
    return this.nikname;
  }

  set name(name: string) {
    this.nikname = name;
  }
  constructor(private nikname: string) {}
}
```

### TicTacToe.ts
```javascript
import { Board, UserOption } from './Board';
import { Input, UserInput } from './Input';
import Player from './Player';

type History = {
  player: Player;
  move: number;
  value: UserOption;
};

export default class TicTacToe {
  private history: History[] = [];
  private endMessage: string = '';
  private board: Board;
  private players!: [Player, Player];

  constructor() {
    this.board = new Board(3, 3);
  }

  private checkFirstRowIsFull(): boolean {
    return (
      this.board.getBoardCellValue(1) === this.board.getBoardCellValue(2) &&
      this.board.getBoardCellValue(2) === this.board.getBoardCellValue(3) &&
      this.board.getBoardCellValue(3) !== -1
    );
  }

  private checkSecondRowIsFull(): boolean {
    return (
      this.board.getBoardCellValue(4) === this.board.getBoardCellValue(5) &&
      this.board.getBoardCellValue(5) === this.board.getBoardCellValue(6) &&
      this.board.getBoardCellValue(6) !== -1
    );
  }

  private checkThirdRowIsFull(): boolean {
    return (
      this.board.getBoardCellValue(7) === this.board.getBoardCellValue(8) &&
      this.board.getBoardCellValue(8) === this.board.getBoardCellValue(9) &&
      this.board.getBoardCellValue(9) !== -1
    );
  }

  private checkFirstColumnIsFull(): boolean {
    return (
      this.board.getBoardCellValue(1) === this.board.getBoardCellValue(4) &&
      this.board.getBoardCellValue(4) === this.board.getBoardCellValue(7) &&
      this.board.getBoardCellValue(7) !== -1
    );
  }

  private checkSecondColumnIsFull(): boolean {
    return (
      this.board.getBoardCellValue(2) === this.board.getBoardCellValue(5) &&
      this.board.getBoardCellValue(5) === this.board.getBoardCellValue(8) &&
      this.board.getBoardCellValue(8) !== -1
    );
  }

  private checkThirdColumnIsFull(): boolean {
    return (
      this.board.getBoardCellValue(3) === this.board.getBoardCellValue(6) &&
      this.board.getBoardCellValue(6) === this.board.getBoardCellValue(9) &&
      this.board.getBoardCellValue(9) !== -1
    );
  }

  private checkDiagonalIsFull(): boolean {
    return (
      this.board.getBoardCellValue(1) === this.board.getBoardCellValue(5) &&
      this.board.getBoardCellValue(5) === this.board.getBoardCellValue(9) &&
      this.board.getBoardCellValue(9) !== -1
    );
  }

  private checkInverseDiagonalIsFull(): boolean {
    return (
      this.board.getBoardCellValue(3) === this.board.getBoardCellValue(5) &&
      this.board.getBoardCellValue(5) === this.board.getBoardCellValue(7) &&
      this.board.getBoardCellValue(7) !== -1
    );
  }

  private checkValidMove(move: number): boolean {
    return this.board.checkValidCellValue(move);
  }

  private checkEndOfGameByWinning(): boolean {
    let lastMove = this.history[this.history.length - 1].move;
    if (lastMove >= 1 && lastMove <= 3) {
      if (this.checkFirstRowIsFull()) return true;
    } else if (lastMove >= 4 && lastMove <= 6) {
      if (this.checkSecondRowIsFull()) return true;
    } else if (lastMove >= 7 && lastMove <= 9) {
      if (this.checkThirdRowIsFull()) return true;
    }
    if (lastMove === 1 || lastMove === 4 || lastMove === 7) {
      if (this.checkFirstColumnIsFull()) return true;
    } else if (lastMove === 2 || lastMove === 5 || lastMove === 8) {
      if (this.checkSecondColumnIsFull()) return true;
    } else if (lastMove === 3 || lastMove === 6 || lastMove === 9) {
      if (this.checkThirdColumnIsFull()) return true;
    }
    if (lastMove === 1 || lastMove === 5 || lastMove === 9) {
      if (this.checkDiagonalIsFull()) return true;
    }
    if (lastMove === 3 || lastMove === 5 || lastMove === 7) {
      if (this.checkInverseDiagonalIsFull()) return true;
    }
    return false;
  }

  private checkEnOfGameByTie(): boolean {
    return this.board.checkFullBoard();
  }

  private move(player: Player, move: number, value: UserOption): boolean {
    if (this.board.setBoardCellValue(move, value)) {
      this.history.push({ player, move, value });
      return true;
    }
    return false;
  }

  private displayGame(): void {
    console.log(this.board.displayBoard(this.players[0], this.players[1]));
  }

  async playersSetup() {
    console.clear();
    let inputUserOne = await Input.getInput('What is the name of the player1?');
    let inputUserTwo = await Input.getInput('What is the name of the player2?');
    let startPlayer = Math.floor(Math.random() * 2);
    this.players = [
      new Player(inputUserOne.data),
      new Player(inputUserTwo.data),
    ];
    if (startPlayer === 1) {
      this.players = [this.players[1], this.players[0]];
    }
    console.log(`\n==== Player: ${this.players[0].name} is starting ====`);
  }

  async startGame() {
    this.endMessage = '';
    this.board.clearBoard();
    await this.playersSetup();
    let endOfGameByWinning = false;
    let endOfGameByTie = false;
    let activePlayer = 0;
    let cellNumber = 0;
    let input: UserInput;
    let errorMessage = '';
    while (!(endOfGameByWinning || endOfGameByTie)) {
      console.clear();
      if (errorMessage) console.log(errorMessage);
      this.displayGame();
      input = await Input.getInput(
        `${this.players[activePlayer].name} choose your cell`
      );
      cellNumber = Number(input.data);
      errorMessage = `⚠️⚠️That's is not a valid cell, try again.⚠️⚠️`;
      if (this.checkValidMove(cellNumber)) {
        errorMessage = `⚠️⚠️That cell was already selected, try again.⚠️⚠️`;
        if (
          this.move(
            this.players[activePlayer],
            cellNumber,
            activePlayer === 0 ? 1 : 0
          )
        ) {
          activePlayer = activePlayer === 0 ? 1 : 0;
          errorMessage = '';
        }
      }
      endOfGameByTie = this.checkEnOfGameByTie();
      endOfGameByWinning = this.checkEndOfGameByWinning();
    }
    console.clear();
    this.displayGame();
    if (endOfGameByWinning)
      this.endMessage = `🥳🥳🥳 ${
        this.players[activePlayer === 0 ? 1 : 0].name
      } won the game!!!`;
    if (endOfGameByTie)
      this.endMessage = `🙃🙃🙃 Nobody won, best luck the next one...`;
    console.log(this.endMessage);
  }

  showHistory(): void {
    console.clear();
    console.log(
      '\n========================PREVIOUS GAME========================================'
    );
    this.board.clearBoard();
    this.displayGame();
    const lastHistory = [...this.history];
    this.history = [];
    lastHistory.forEach((h: History) => {
      this.move(h.player, h.move, h.value);
      this.displayGame();
    });
    console.log(`
      ========================================
      ${this.endMessage}
      ========================================`);
  }
}
```

### index.ts
```javascript
import Main from './Main';
const program = new Main();
program.start();
```

![alt text](/src/technologies/week7/Tuesday/inputoutput.jpg "Input/Output")
