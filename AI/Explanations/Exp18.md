# Experiment 18: Write a LISP program to calculate the maximum and minimum of some numbers.

## Problem Statement

Write a LISP program that defines functions to find the maximum and minimum values in a list of numbers.

## Introduction

Finding the maximum and minimum of a set of numbers is a fundamental problem. We implement recursive functions that traverse the list, comparing each element to the current best.

### Key Concepts

- **Recursion:** Process the list by handling the first element and recursing on the rest.
- **Base case:** A single-element list: the element itself is both max and min.
- **Built-in functions:** `max` and `min` compare two numbers and return the larger/smaller.

## Solution Explanation

1. **list-max:** Finds the maximum value.
   - If the list has one element, return it.
   - Otherwise, compare the first element with the maximum of the rest.

2. **list-min:** Finds the minimum value (same logic).

```lisp
(defun list-max (lst)
  (if (null (cdr lst))
      (car lst)
      (max (car lst) (list-max (cdr lst)))))

(defun list-min (lst)
  (if (null (cdr lst))
      (car lst)
      (min (car lst) (list-min (cdr lst)))))
```

### Running the Program

```
Maximum and Minimum of Numbers
==============================

Numbers: (34 78 12 56 89 23 45)
Maximum: 89
Minimum: 12
```
