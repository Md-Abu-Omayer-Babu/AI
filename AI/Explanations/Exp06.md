# Experiment 06: Write a Prolog program to calculate factorial of a number.

## Problem Statement

Write a Prolog program that takes a number N and computes N! (N factorial).

## Introduction

Factorial is defined as:
- 0! = 1
- N! = N × (N-1)! for N > 0

### Key Concepts

- **Recursion:** Each factorial depends on the factorial of a smaller number.
- **Base case:** 0! = 1.
- **Tail recursion consideration:** This implementation uses simple recursion, which grows the stack for large N.

## Solution Explanation

The predicate `fact/2` computes the factorial:

```prolog
fact(0, 1).           % Base case: 0! = 1
fact(N, F) :-         % Recursive case
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.
```

1. Base case: 0! = 1.
2. Recursive case: For N > 0, compute (N-1)! recursively, then multiply by N.

### Running the Program

```
?- go.
Factorial Calculator
Enter N: 5.
5! = 120
```
