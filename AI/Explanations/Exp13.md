# Experiment 13: Write a Prolog program to concatenate two lists.

## Problem Statement

Write a Prolog program that takes two lists and returns their concatenation (all elements of the first list followed by all elements of the second).

## Introduction

List concatenation is a fundamental operation in Prolog. The built-in predicate is `append/3`, and we implement our own version called `concat/3`.

### Key Concepts

- **Recursive list construction:** Build the result list by taking elements from the first list one by one.
- **Base case:** Concatenating an empty list with any list L gives L.
- **Recursive case:** For a non-empty first list `[H|T]`, the result is `[H|R]` where R is the concatenation of T and L.

## Solution Explanation

The predicate `concat/3` joins two lists:

```prolog
concat([], L, L).              % Base case
concat([H|T], L, [H|R]) :-     % Recursive case
    concat(T, L, R).
```

1. If the first list is empty, the result is the second list.
2. Otherwise, take the head H of the first list, recursively concatenate the tail T with L to get R, then the final result is `[H|R]`.

### Running the Program

```
?- go.
List 1: [a, b, c]
List 2: [d, e, f]
Concatenated: [a, b, c, d, e, f]
```
