# Tic Tac Toe

A two-player command-line Tic Tac Toe game written in Ruby. Built to practice object-oriented design with clearly separated responsibilities across multiple classes.

---

## Features

- 👥 Two-player mode — each player enters their name before the game starts
- ✅ Input validation — rejects moves on already-occupied squares
- 🏆 Win detection — checks all rows, columns, and diagonals after every move
- 🤝 Draw detection — recognises a full board with no winner
- 🗂️ Clean OOP structure — `Game`, `Board`, and `Player` classes with single responsibilities

---

## How to Play

**Prerequisites:** Ruby must be installed. Verify with:

```bash
ruby -v
```

**Run the game:**

```bash
git clone https://github.com/Car-riane/tictactoe.git
cd tictactoe
ruby game.rb
```

**Gameplay:**
1. Both players enter their names
2. Player X goes first
3. On your turn, enter the number of the square you want to claim
4. First player to get three in a row wins — or it's a draw if the board fills up

---

## Project Structure

```
tictactoe/
├── game.rb     # Game loop, turn management, win/draw detection
├── board.rb    # Board state, display, move validation, win checking
└── player.rb   # Player name and symbol, move input handling
```

---

## Class Design

**`Game`** — orchestrates the overall flow. Initialises the board and both players, runs the game loop, switches turns, and checks for a game-over condition after each move.

**`Board`** — owns the board state. Internally represented as a 9-element array. Handles displaying the grid, applying moves, checking if a square is taken, and detecting winning combinations by checking all 8 possible win index patterns (3 rows, 3 columns, 2 diagonals). Also has a `reset` method to clear the board for a new game.

**`Player`** — represents a single player. Stores their name and symbol (`X` or `O`) and handles prompting for and validating their move input.

---

## What I Learned

- Representing a 2D board as a flat 9-element array and mapping positions to indices
- Writing a win-detection algorithm by hardcoding all 8 winning index combinations and checking if they're all the same non-empty value
- Designing a program around classes with single, clear responsibilities
- Passing objects between classes rather than relying on global state
- Using a ternary operator to cleanly switch between two players
- Separating input/output (player, game) from pure logic (board)
- How to structure a game loop with a clean break condition

---

## Built With

- Ruby (no external gems required)

---

## Future Improvements

- Add RSpec test coverage for board logic and win detection
- Add a computer opponent with basic AI
- Add input validation for out-of-range numbers
- Refactor board display to show a proper grid with borders
