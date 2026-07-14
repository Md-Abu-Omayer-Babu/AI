# Experiment 15: Write a Prolog program to insert an element into a list.

## Problem Statement

Write a Prolog program that takes an element and a list, and inserts the element at any position in the list, returning all possible results.

## Introduction

Inserting an element into a list means placing it somewhere in the list, shifting existing elements as needed. In Prolog, we can define insertion nondeterministically — backtracking to find all possible positions where the element can be inserted.

### Key Concepts

- **Nondeterminism:** Prolog can generate multiple solutions through backtracking.
- **Two cases for insertion:**
  - Insert at the front: `[X|L]`
  - Insert somewhere in the tail: keep the head, recursively insert into the tail.

## Solution Explanation

The predicate `insert_elem/3` inserts an element X into list L:

```prolog
insert_elem(X, L, [X|L]).                 % Insert at front
insert_elem(X, [H|T], [H|R]) :-           % Insert somewhere in tail
    insert_elem(X, T, R).
```

1. **First rule:** The element can always be placed at the front, resulting in `[X|L]`.
2. **Second rule:** The element can be inserted somewhere inside the list: keep the head H, recursively insert X into the tail T to get R, then the result is `[H|R]`.

By backtracking, Prolog will try both rules and find all insertion positions.

### Running the Program

```
?- go.
Original list: [a, b, d, e]
Element to insert: c at position 3
After insertion: [a, b, c, d, e]
```
