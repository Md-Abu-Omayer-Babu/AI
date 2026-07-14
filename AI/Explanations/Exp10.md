# Experiment 10: Write a Prolog program for a cyclic graph.

## Problem Statement

Write a Prolog program that defines a cyclic graph and finds paths between nodes, handling cycles to avoid infinite loops.

## Introduction

A cyclic graph contains at least one cycle (a path that starts and ends at the same node). When traversing such graphs, we must track visited nodes to prevent infinite recursion.

### Key Concepts

- **Cycle:** A path like a → b → c → a forms a cycle.
- **Visited list:** Keep track of nodes already visited to avoid revisiting them.
- **member/2:** Checks if an element exists in a list.
- **not/1:** Negation — `not(member(Y, Visited))` succeeds only if Y is not in the visited list.

## Solution Explanation

1. **Edge facts:** `edge(a, b). edge(b, c). edge(c, a). edge(c, d). ...`
2. **Path predicate:**
   - `path(X, Y, Visited)` is true if there's a path from X to Y without revisiting nodes in Visited.
   - Direct edge: `path(X, Y, Visited) :- edge(X, Y), not(member(Y, Visited)).`
   - Indirect path: `path(X, Y, Visited) :- edge(X, Z), not(member(Z, Visited)), path(Z, Y, [Z|Visited]).`
3. **reachable/2:** `reachable(X, Y) :- path(X, Y, [X]).` — Starts with X in the visited list.

### Running the Program

```
?- go.
Cyclic Graph Path Finder

Edges: a-b, b-c, c-a, c-d, d-e, e-f

Path from a to f: Yes
Path from a to d: Yes
Path from b to c: Yes
```
