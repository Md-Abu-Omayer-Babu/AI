# Experiment 02: Write a Prolog program to find maximum between two numbers.

## Problem Statement

Write a Prolog program that takes two numbers as input and returns the larger of the two.

## Introduction

Finding the maximum of two numbers is a basic comparison operation. In Prolog, we define rules that check conditions and return the appropriate result.

### Key Concepts

- **Comparison operators:** `>=`, `>`, `=<`, `<` work as in other languages.
- **Cut (!):** The cut operator tells Prolog not to backtrack past this point. Once a condition is satisfied, we commit to that choice.
- **Facts and rules:** A rule defines a relationship between arguments.

## Solution Explanation

The predicate `max/3` takes three arguments: two input numbers and the output maximum.

```prolog
max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).
```

1. **First rule:** If X >= Y, then the maximum is X. The cut `!` prevents Prolog from trying the second rule if the first succeeds.
2. **Second rule:** If the first rule failed (X < Y), then the maximum is Y. The underscore `_` means we don't care about the first argument's value.

The `go` predicate reads two numbers from the user and displays the maximum.

### Running the Program

```
?- go.
Enter first number: 45.
Enter second number: 23.
Maximum is 45
```
