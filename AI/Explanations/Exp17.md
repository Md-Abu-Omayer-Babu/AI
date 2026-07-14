# Experiment 17: Write a LISP program applying additional LIST manipulation functions and verify their operation.

## Problem Statement

Write a LISP program that demonstrates additional list manipulation functions: `member`, `reverse`, `length`, `remove`, and `subst`.

## Introduction

Beyond the basic list functions (car, cdr, cons), LISP provides many powerful list processing functions for searching, transforming, and analyzing lists.

### Key Functions

| Function | Description | Example | Result |
|----------|-------------|---------|--------|
| `member` | Searches for an element in a list | `(member 'b '(a b c))` | `(B C)` |
| `reverse` | Reverses the order of elements | `(reverse '(a b c))` | `(C B A)` |
| `length` | Returns the number of elements | `(length '(a b c))` | `3` |
| `remove` | Removes all occurrences of an element | `(remove 'b '(a b c b d))` | `(A C D)` |
| `subst` | Substitutes one element for another | `(subst 'x 'b '(a b c))` | `(A X C)` |

## Solution Explanation

The program defines a sample list with duplicate elements and demonstrates each function:

1. **member:** Checks if an element exists. Returns the rest of the list starting from the match, or NIL if not found.
2. **reverse:** Reverses the entire list order.
3. **length:** Counts the total number of elements.
4. **remove:** Deletes all occurrences of a specified element.
5. **subst:** Replaces all occurrences of one element with another.

### Running the Program

```
Additional List Manipulation Functions
========================================

Original list: (A B C B D E B)

1. member - checks membership
   (member 'c '(A B C B D E B)) => (C B D E B)
   (member 'z '(A B C B D E B)) => NIL

2. reverse - reverses list
   (reverse '(A B C B D E B)) => (B E D B C B A)

3. length - returns list length
   (length '(A B C B D E B)) => 7

4. remove - removes all occurrences
   (remove 'b '(A B C B D E B)) => (A C D E)

5. subst - substitutes elements
   (subst 'x 'b '(A B C B D E B)) => (A X C X D E X)
```
