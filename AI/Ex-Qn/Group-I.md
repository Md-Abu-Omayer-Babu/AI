# AI-Ready Exam Extraction

## Document Information

**University:** Jatiya Kabi Kazi Nazrul Islam University

**Department:** Department of Computer Science and Engineering

**Exam:** 4th Year 1st Semester Lab Examination 2025

**Session:** 2021–22

**Course:** CSE 406 (Artificial Intelligence Lab)

**Time:** 6 Hours

**Total Marks:** 60 (30 + 20 + 10)

---

# Instructions

Answer the following questions.

---

# Section-A: Solve the following problems by using Prolog (10)

1. Write a Prolog program to find nth number of Fibonacci series.

2. Write a Prolog program to calculate factorial of a number.

3. Write a Prolog program to demonstrate the cube of a number.

4. Write a Prolog program to find GCD and LCM of two numbers.

5. Write a Prolog program to implement bubble sort.

6. Write a Prolog program to concatenate two lists.

7. Write a Prolog program to delete an element from a list.

8. Write a Prolog program to insert an element into a list.

---

# Section-B: Solve the following problems by using LISP (10)

1. Write a LISP program applying basic LIST manipulation functions:
   - car
   - cdr
   - cons
   - atom
   - list

2. Write a LISP program to verify the operation of:
   - append
   - reverse
   - length
   - member

3. Write a LISP program for finding the area of a Circle.

4. Write a LISP program to calculate the maximum and minimum of some numbers.

5. Write a LISP program to show the name and roll of a student using PutProp Function.

---

# Section-C: Search Related Problems (10)

## Question 1

Implement Breadth First Search algorithm for the following graph where **F** is the goal node.

### Graph Structure

Nodes:

- A
- B
- C
- D
- E
- F (Goal)
- G
- H

Edges:

A → B

A → C

A → D

B → E

C → F

D → G

E → H

### Tree Representation

```text
              A
           /  |  \
          B   C   D
         / |       \
        E  F        G
       /
      H
```

Goal Node:

```
F
```

Expected task:

- Implement Breadth First Search.
- Start from A.
- Stop when F is found.
- Produce traversal order and path.

---

## Question 2

Consider the following graph.

Find the shortest path to travel from **A** to **G** using **A\*** algorithm, where the numbers near the nodes represent the heuristic values.

### Heuristic Values

```
A = 11
B = 6
C = 99
E = 7
D = 1
G = 0
```

### Edge Costs

From the image:

```
A --2--> B
A --5--> E

B --1--> C
B --9--> G

E --6--> D

D --1--> G
```

> Note:
> The image quality is slightly blurred. The visible edge weights appear to be:
>
> - A-B = 2
> - A-E = 5
> - B-C = 1
> - B-G = 9
> - E-D = 6
> - D-G = 1
>
> These are the values most clearly visible.

### Graph Layout

```text
                 C(99)
                /
             1 /
              /
        B(6) --------9-------- G(0)
       /                        /
    2 /                        /
     /                        /
A(11)                       1/
     \                      /
    5 \                    /
       \                  /
        E(7) -----6------ D(1)

```

Expected task:

- Apply A* Search.
- Start node: A
- Goal node: G
- Use heuristic values shown beside nodes.
- Compute:
  - f(n) = g(n) + h(n)
  - OPEN list
  - CLOSED list
  - Final shortest path
  - Total path cost

---

# Summary of Questions

## Prolog

1. Fibonacci
2. Factorial
3. Cube of a number
4. GCD and LCM
5. Bubble Sort
6. Concatenate Lists
7. Delete List Element
8. Insert List Element

## LISP

1. Basic list manipulation (car, cdr, cons, atom, list)
2. append, reverse, length, member
3. Area of Circle
4. Maximum & Minimum
5. Student Name and Roll using PutProp

## Search Algorithms

1. Breadth First Search (Goal = F)

2. A* Search (A → G) using given heuristics and edge costs.