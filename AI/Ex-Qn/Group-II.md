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

1. Write a Prolog program to find the GPA of a student.

2. Write a Prolog program to find nth number of Fibonacci series.

3. Write a Prolog program to calculate factorial of a number.

4. Write a Prolog program to demonstrate the cube of a number.

5. Write a Prolog program to find GCD and LCM of two numbers.

6. Write a Prolog program to implement bubble sort.

7. Write a Prolog program to concatenate two lists.

8. Write a Prolog program to delete an element from a list.

9. Write a Prolog program to insert an element into a list.

---

# Section-B: Solve the following problems by using LISP (10)

1. Write a LISP program applying basic LIST manipulation functions:
   - cdr
   - car
   - cons
   - list

2. Write a LISP program to verify the operation of:
   - append
   - reverse
   - length
   - member

3. Write a LISP program for finding the area of a Triangle.

4. Write a LISP program to calculate the maximum and minimum of some numbers.

5. Write a LISP program to show the name and rank of an employee using PutProp function.

---

# Section-C: Search Related Problems (10)

## Question 1

Implement **Depth First Search (DFS)** algorithm for the following graph where **F** is the goal node.

### Nodes

- A
- B
- C
- D
- E
- F (Goal)
- G
- H

### Edges

```
A → B
A → C
A → D

B → E
B → F

D → G

E → H
```

### Tree Representation

```text
              A
           /  |  \
          B   C   D
         / \       \
        E   F       G
       /
      H
```

### Goal Node

```
F
```

### Expected Task

Implement Depth First Search.

Starting node:

```
A
```

Goal node:

```
F
```

Show:

- DFS traversal order
- Nodes visited
- Path from A to F
- Stop once F is reached

---

# Question 2

Consider the following graph.

Find the shortest path to travel from **a** to **z** using the **A\*** algorithm, where the **numbers below the nodes represent the heuristic values**.

---

## Heuristic Values

```
a = 14
b = 12
c = 11
d = 6
e = 4
f = 11
z = 0
```

---

## Edge Costs

```
a --4-- b

a --3-- c

b --5-- f

f --16-- z

b --12-- e

c --10-- e

c --7-- d

d --2-- e

e --5-- z
```

---

## Graph Representation

```text
                b(12)
               /    \
            4 /      \5
             /        \
         a(14)        f(11)
            \           \
           3 \           \16
              \           \
              c(11)       z(0)
             /   \        /
          7 /     \10   /5
           /       \    /
        d(6) --2-- e(4)
```

---

## Graph Connectivity

```
a ↔ b (4)

a ↔ c (3)

b ↔ f (5)

f ↔ z (16)

b ↔ e (12)

c ↔ e (10)

c ↔ d (7)

d ↔ e (2)

e ↔ z (5)
```

---

## Expected Task

Apply the A* Search algorithm.

### Start Node

```
a
```

### Goal Node

```
z
```

Use

```
f(n) = g(n) + h(n)
```

Show:

- OPEN list
- CLOSED list
- g(n)
- h(n)
- f(n)
- Node expansion order
- Final shortest path
- Total path cost

---

# Summary of Questions

## Section-A (Prolog)

1. GPA of a student
2. Fibonacci Series
3. Factorial
4. Cube of a Number
5. GCD and LCM
6. Bubble Sort
7. Concatenate Two Lists
8. Delete Element from a List
9. Insert Element into a List

---

## Section-B (LISP)

1. Basic list manipulation (cdr, car, cons, list)
2. append, reverse, length, member
3. Area of Triangle
4. Maximum and Minimum
5. Employee Name and Rank using PutProp

---

## Section-C (Search Algorithms)

### Question 1

Depth First Search (DFS)

- Start: A
- Goal: F

### Question 2

A* Search

- Start: a
- Goal: z
- Use the given heuristic values and edge costs.