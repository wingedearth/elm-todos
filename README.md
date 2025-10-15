# Elm Hello World

A simple "Hello, World!" application built with Elm.

## Getting Started

### Prerequisites

- [Elm](https://elm-lang.org/) 0.19.1
- [Node.js](https://nodejs.org/) (for npm scripts)

### Installation

1. Clone the repository:
   ```bash
   git clone git@github.com:wingedearth/elm-helloworld.git
   cd elm-helloworld
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

### Development

- **Build the app:**
  ```bash
  npm run build
  ```

- **Run development server:**
  ```bash
  npm run dev
  ```
  This will compile the Elm code and start a local server at http://localhost:8000

- **Build with debug mode:**
  ```bash
  npm run watch
  ```

### Project Structure

```
elm-helloworld/
├── src/
│   └── Main.elm          # Main Elm application
├── elm.json              # Elm project configuration
├── index.html            # HTML entry point
├── package.json          # npm scripts and dependencies
└── README.md             # This file
```

### What it does

This app displays "Hello, World!" with centered styling using Elm's Browser.sandbox architecture.

## Built With

- [Elm](https://elm-lang.org/) - Functional programming language for web apps
- [elm/browser](https://package.elm-lang.org/packages/elm/browser/latest/) - Browser APIs for Elm
- [elm/html](https://package.elm-lang.org/packages/elm/html/latest/) - HTML rendering in Elm
