# Experiment 01: Write a Prolog program to print a list of items.

## Problem Statement

Write a Prolog program that prints all elements of a list, one item per line.

## Introduction

Prolog is a logic programming language where programs are expressed in terms of facts and rules. Lists are a fundamental data structure in Prolog, written as `[item1, item2, item3]`. To process a list, we use recursion: we break it into a **head** (first element) and **tail** (rest of the list) using the notation `[H|T]`.

### Key Concepts

- **List notation:** `[a, b, c]` — elements separated by commas.
- **Head and tail pattern:** `[H|T]` where H is the first element and T is the remaining list.
- **Recursion:** Process the head, then recursively process the tail.
- **Base case:** An empty list `[]` stops the recursion.

## Solution Explanation

The program defines a predicate `print_list/1` that takes a list and prints each element:

1. **Base case:** `print_list([]).` — If the list is empty, do nothing and stop.
2. **Recursive case:** `print_list([H|T]) :- write(H), nl, print_list(T).` — Print the head element, print a newline, then recursively print the tail.

The `go` predicate demonstrates with a sample list `[apple, banana, cherry, date]`.

### Running the Program

```
?- go.
List: [apple, banana, cherry, date]
Elements:
apple
banana
cherry
date
```
