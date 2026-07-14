# Experiment 09: Write a Prolog program to find GCD and LCM of two numbers.

## Problem Statement

Write a Prolog program that takes two numbers and computes their GCD (Greatest Common Divisor) and LCM (Least Common Multiple).

## Introduction

GCD is the largest number that divides both inputs. LCM is the smallest number that both inputs divide into.

### Formula

- **GCD:** Uses the Euclidean algorithm: `GCD(a, b) = GCD(b, a mod b)`, with `GCD(x, 0) = x`.
- **LCM:** `LCM(a, b) = a × b / GCD(a, b)`

### Key Concepts

- **Euclidean algorithm:** Repeatedly replace (a, b) with (b, a mod b) until b = 0.
- **Modulo operator:** `A mod B` gives the remainder when A is divided by B.
- **Cut (!):** Used to prevent infinite recursion when one argument becomes 0.

## Solution Explanation

1. **GCD rules:**
   - `gcd(X, 0, X) :- X > 0, !.` — If second argument is 0, GCD is the first.
   - `gcd(0, Y, Y) :- Y > 0, !.` — If first argument is 0, GCD is the second.
   - `gcd(X, Y, G) :- X1 is X mod Y, gcd(Y, X1, G).` — Apply Euclidean step.

2. **LCM rule:**
   - `lcm(X, Y, L) :- gcd(X, Y, G), L is X * Y / G.` — Use GCD to compute LCM.

### Running the Program

```
?- go.
GCD and LCM Calculator
Enter first number: 12.
Enter second number: 18.
GCD(12, 18) = 6
LCM(12, 18) = 36
```
