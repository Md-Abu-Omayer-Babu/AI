# Experiment 19: Write a LISP program using PutProp function to get different properties of an object.

## Problem Statement

Write a LISP program that uses the `putprop` (`setf` with `get`) function to assign and retrieve properties of symbolic objects.

## Introduction

In LISP, property lists (plists) allow us to attach key-value pairs to symbols. This is a simple form of object-oriented programming where symbols serve as objects and properties serve as attributes.

### Key Concepts

- **Property list:** Each symbol can have an associated list of (property-name, value) pairs.
- **setf (get ...):** Sets a property value: `(setf (get 'object 'property) value)`.
- **get:** Retrieves a property value: `(get 'object 'property)`.

## Solution Explanation

The program creates two objects (`book` and `person`) with multiple properties:

1. **Book object:** title, author, year, genre.
2. **Person object:** name, age, major.

Each property is set using `(setf (get 'object 'property) value)` and retrieved using `(get 'object 'property)`.

### Running the Program

```
PutProp - Object Properties
==========================

Book Properties:
  Title : The Great Gatsby
  Author: F. Scott Fitzgerald
  Year  : 1925
  Genre : Novel

Person Properties:
  Name : Alice
  Age  : 20
  Major: Computer Science
```
