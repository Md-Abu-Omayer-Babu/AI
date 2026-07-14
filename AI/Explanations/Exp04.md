# Experiment 04: Write a Prolog program that describes the student-professor relationships.

## Problem Statement

Write a Prolog program that defines facts about professors teaching courses and students studying courses, and then creates rules to find relationships between professors and students.

## Introduction

This is a classic example of a knowledge base in Prolog. We encode real-world relationships as facts and derive new relationships using rules.

### Key Concepts

- **Facts:** `teaches(dr_smith, math)` — Dr. Smith teaches Math. `studies(alice, math)` — Alice studies Math.
- **Rules:** A derived relationship: a professor teaches a student if they both are connected through a course.
- **Backtracking:** Prolog will find all solutions by backtracking through the facts.
- **fail trick:** Using `fail` at the end of a rule forces Prolog to backtrack and find all matching solutions.

## Solution Explanation

1. **Facts:** Define `teaches/2` (professor, course) and `studies/2` (student, course).
2. **Rule:** `teaches_student(P, S) :- teaches(P, C), studies(S, C).` — P teaches S if there exists a course C that P teaches and S studies.
3. The `go` predicate uses `fail` to print all matching relationships.

### Running the Program

```
?- go.
Student-Professor Relationships

Who does Dr. Smith teach?
  - alice
  - bob
Who teaches Alice?
  - dr_smith
```
