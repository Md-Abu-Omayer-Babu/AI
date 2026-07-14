# Experiment 16: Write a LISP program applying basic LIST manipulation functions and verify their operation.

## Problem Statement

Write a LISP program that demonstrates and verifies the basic list manipulation functions: `car`, `cdr`, `cons`, `list`, and `append`.

## Introduction

LISP (LISt Processing) is one of the oldest programming languages, designed specifically for list manipulation. Lists are the fundamental data structure in LISP, and the language provides a rich set of functions to work with them.

### Key Functions

| Function | Description | Example | Result |
|----------|-------------|---------|--------|
| `car` | Returns the first element of a list | `(car '(a b c))` | `A` |
| `cdr` | Returns the list without the first element | `(cdr '(a b c))` | `(B C)` |
| `cons` | Adds an element to the front of a list | `(cons 'x '(a b))` | `(X A B)` |
| `list` | Creates a list from arguments | `(list 'a 'b 'c')` | `(A B C)` |
| `append` | Joins two lists together | `(append '(a b) '(c d))` | `(A B C D)` |

## Solution Explanation

The program displays a sample list and then applies each basic function, printing the result:

1. **car:** Extracts and displays the first element.
2. **cdr:** Extracts and displays the rest of the list.
3. **cons:** Adds a new element to the front.
4. **list:** Creates a new list from individual elements.
5. **append:** Joins two lists end to end.

### Running the Program

```
Basic List Manipulation Functions
==================================

Original list: (A B C D E)

1. car - returns first element
   (car '(A B C D E)) => A

2. cdr - returns list without first element
   (cdr '(A B C D E)) => (B C D E)

3. cons - adds element to front
   (cons 'x '(A B C D E)) => (X A B C D E)

4. list - creates a list
   (list 'p 'q 'r) => (P Q R)

5. append - joins two lists
   (append '(A B C D E) '(X Y Z)) => (A B C D E X Y Z)
```
