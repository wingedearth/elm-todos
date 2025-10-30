# Elm Todos

A simple todo list application built with Elm.

## Getting Started

### Prerequisites

- [Elm](https://elm-lang.org/) 0.19.1
- [Node.js](https://nodejs.org/) (for npm scripts)

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd elm-todos
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

### Versioning & Releases

This project uses [Conventional Commits](https://www.conventionalcommits.org/) and automated versioning:

- **Create a release:**
  ```bash
  npm run release        # Patch version (1.0.0 -> 1.0.1)
  npm run release:minor  # Minor version (1.0.0 -> 1.1.0)
  npm run release:major  # Major version (1.0.0 -> 2.0.0)
  ```

- **Commit message format:**
  ```
  type(scope): description
  
  [optional body]
  
  [optional footer]
  ```

- **Commit types:**
  - `feat`: New feature
  - `fix`: Bug fix
  - `docs`: Documentation changes
  - `style`: Code style changes
  - `refactor`: Code refactoring
  - `perf`: Performance improvements
  - `test`: Test changes
  - `build`: Build system changes
  - `ci`: CI configuration changes
  - `chore`: Other changes

### Project Structure

```
elm-todos/
├── src/
│   ├── Main.elm                  # Main Elm application
│   ├── Components/               # UI components
│   │   ├── Header.elm
│   │   ├── TodoInput.elm
│   │   └── TodoList.elm
│   ├── Styles/                   # Styling modules
│   ├── Types/                    # Type definitions
│   └── Utils/                    # Utility functions
├── elm.json                      # Elm project configuration
├── index.html                    # HTML entry point
├── package.json                  # npm scripts and dependencies
└── README.md                     # This file
```

### What it does

This app provides a simple todo list interface where you can:
- Add new todo items
- View your list of todos
- Manage tasks using Elm's Browser.sandbox architecture

## Built With

- [Elm](https://elm-lang.org/) - Functional programming language for web apps
- [elm/browser](https://package.elm-lang.org/packages/elm/browser/latest/) - Browser APIs for Elm
- [elm/html](https://package.elm-lang.org/packages/elm/html/latest/) - HTML rendering in Elm
