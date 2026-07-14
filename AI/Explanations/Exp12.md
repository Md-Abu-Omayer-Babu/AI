# Experiment 12: Write a Prolog program to implement bubble sort.

## Problem Statement

Write a Prolog program that sorts a list of numbers using the bubble sort algorithm.

## Introduction

Bubble sort is a simple sorting algorithm that repeatedly steps through a list, compares adjacent elements, and swaps them if they are in the wrong order. The process repeats until no more swaps are needed.

### Key Concepts

- **Comparison and swap:** Compare adjacent elements X and Y; if X > Y, swap them.
- **Bubble pass:** One complete pass through the list, swapping as needed.
- **Multiple passes:** Continue making passes until the list is sorted (no swaps in a pass).
- **Recursion:** Prolog implements loops through recursion.

## Solution Explanation

1. **bubble/2:** The main sorting predicate.
   - Call `bubble_pass/2` to make one pass.
   - If the list changed (old ≠ new), recurse on the new list.
   - If unchanged, the list is sorted.

2. **bubble_pass/2:** Makes one pass through the list.
   - Base: single-element list stays as is.
   - If X > Y: swap them (`[Y|NewRest]`), continue with X in the rest.
   - If X ≤ Y: keep X, continue with Y in the rest.

### Running the Program

```
?- go.
Original list: [5, 3, 8, 1, 9, 2]
Sorted list:   [1, 2, 3, 5, 8, 9]
```
