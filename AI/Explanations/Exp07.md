# Experiment 07: Write a Prolog program to demonstrate the cube of a number.

## Problem Statement

Write a Prolog program that takes a number X and computes X³ (X cubed).

## Introduction

Cubing a number means multiplying it by itself three times: X³ = X × X × X.

### Key Concepts

- **Arithmetic in Prolog:** The `is` operator evaluates arithmetic expressions.
- **Simple rule:** This is a straightforward arithmetic computation with no recursion needed.

## Solution Explanation

The predicate `cube/2` computes the cube:

```prolog
cube(X, Y) :- Y is X * X * X.
```

1. Take the input number X.
2. Compute X × X × X and bind the result to Y.
3. Y is returned as the cube.

### Running the Program

```
?- go.
Cube Calculator
Enter a number: 7.
7^3 = 343
```
