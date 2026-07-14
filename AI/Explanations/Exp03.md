# Experiment 03: Write a Prolog program to find the GPA of a student.

## Problem Statement

Write a Prolog program that stores course grades of students and computes their GPA (Grade Point Average).

## Introduction

GPA (Grade Point Average) is calculated by dividing the total grade points earned by the total credit hours attempted. In Prolog, we store student data as facts and compute the GPA using rules with aggregation.

### Formula

```
GPA = Σ(Grade_Point × Credit) / Σ(Credit)
```

### Key Concepts

- **Facts:** Ground data like `grade(alice, math, 4.0, 3)` means Alice got 4.0 in a 3-credit Math course.
- **findall/3:** Collects all solutions matching a pattern into a list.
- **Recursive sum:** A helper predicate `sum_list/2` adds all numbers in a list.

## Solution Explanation

1. **Facts:** Store grades for each student: `grade(Student, Course, GradePoint, Credits)`.
2. **GPA calculation:** The `gpa/2` predicate:
   - Uses `findall` to collect all `GradePoint × Credits` products and all credits into lists.
   - Sums each list using `sum_list`.
   - Divides total points by total credits.
3. **sum_list:** Recursively sums list elements.

### Running the Program

```
?- go.
Student GPA Calculator

Alice GPA: 3.6666666666666665
Bob GPA: 3.1333333333333333
```
