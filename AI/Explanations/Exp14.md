# Experiment 14: Write a Prolog program to delete an element from a list.

## Problem Statement

Write a Prolog program that takes an element and a list, and returns a new list with all occurrences of that element removed.

## Introduction

Deleting elements from a list is a common operation in list processing. The program traverses the list, keeping elements that don't match the one to be deleted.

### Key Concepts

- **Recursive filtering:** Walk through the list, decide for each element whether to keep or discard it.
- **Base case:** An empty list stays empty.
- **Two recursive cases:**
  - If the head matches the element to delete, skip it and recurse on the tail.
  - If the head doesn't match, keep it and recurse on the tail.

## Solution Explanation

The predicate `delete_elem/3` removes all occurrences of an element:

```prolog
delete_elem(_, [], []).                    % Base case
delete_elem(X, [X|T], R) :-               % Head matches: skip it
    delete_elem(X, T, R).
delete_elem(X, [H|T], [H|R]) :- X \= H,   % Head doesn't match: keep it
    delete_elem(X, T, R).
```

1. Empty list returns empty.
2. If the head equals X, skip it and continue with the tail.
3. If the head differs from X, include it in the result and continue with the tail.

### Running the Program

```
?- go.
Original list: [a, b, c, b, d]
Element to delete: b
After deletion:  [a, c, d]
```
