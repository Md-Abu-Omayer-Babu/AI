# Experiment 05: Write a Prolog program to find nth number of Fibonacci series.

## Problem Statement

Write a Prolog program that takes a number N as input and returns the Nth Fibonacci number.

## Introduction

The Fibonacci sequence is defined as:
- Fib(0) = 0
- Fib(1) = 1
- Fib(N) = Fib(N-1) + Fib(N-2) for N > 1

### Key Concepts

- **Recursion:** The Fibonacci sequence is naturally recursive — each term depends on the previous two.
- **Base cases:** Fib(0) and Fib(1) are the stopping conditions.
- **Arithmetic in Prolog:** The `is` operator evaluates arithmetic expressions. Variables must be instantiated (have values) before use.

## Solution Explanation

The predicate `fib/2` computes the Nth Fibonacci number:

```prolog
fib(0, 0).          % Base case 1
fib(1, 1).          % Base case 2
fib(N, F) :-        % Recursive case
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.
```

1. If N is 0, the result is 0.
2. If N is 1, the result is 1.
3. For N > 1, recursively compute Fib(N-1) and Fib(N-2), then add them.

### Running the Program

```
?- go.
Fibonacci Number Finder
Enter N: 10.
Fibonacci(10) = 55
```
