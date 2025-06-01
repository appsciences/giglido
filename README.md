# Keyboard-Driven Todo App with BDD

A keyboard-shortcuts driven Todo application with BDD tests using Cucumber.

## Features

- Keyboard-driven interface
- Todo item composition with tag support
- Quick navigation between todos
- Search functionality
- Persistent highlight state

## BDD Test Structure

The behavior tests are organized into the following feature files:

- `idle_mode.feature`: Tests for the application's idle state behavior
- `todo_composition.feature`: Tests for creating and editing todos
- `todo_navigation.feature`: Tests for navigating between todos
- `todo_search.feature`: Tests for searching todos

## Development Setup

1. Install dependencies:
```bash
npm install
```

2. Run the BDD tests:
```bash
npm test
```

## Test Organization

The tests are organized following the BDD pattern:
- `features/`: Contains all `.feature` files with Gherkin syntax
- `features/step_definitions/`: Contains the step definitions for the features

## Keyboard Shortcuts

- `C`: Enter composition mode
- `Cmd+Enter`: Save todo (in composition mode)
- `Escape`: Cancel/return to idle mode
- `/`: Enter search mode
- `J`: Navigate down through todos
- `K`: Navigate up through todos
- `Enter`: Edit highlighted todo

## Tags

Tags can be added to todos by prefixing words with `#` (e.g., "Buy groceries #shopping #errands")
