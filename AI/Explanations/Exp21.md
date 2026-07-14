# Experiment 21: Write a C++ program to implement Depth First Search algorithm.

## Problem Statement

Write a C++ program that implements the Depth First Search (DFS) algorithm to traverse a graph starting from a given source node, visiting as far as possible along each branch before backtracking.

## Introduction

DFS is a graph traversal algorithm that explores a path completely before backtracking and exploring other paths. It can be implemented recursively or iteratively using a stack.

### How DFS Works

1. Start from the source node, mark it as visited.
2. Recursively visit each unvisited neighbor, going deeper before going wider.
3. When no more unvisited neighbors exist, backtrack to the previous node.

### Key Concepts

- **Recursion or Stack:** DFS naturally maps to recursion (call stack) or an explicit stack.
- **Visited array:** Prevents revisiting nodes and infinite loops in cyclic graphs.
- **Backtracking:** When a node has no unvisited neighbors, return to the previous node.
- **Time complexity:** O(V + E) where V = vertices, E = edges.

## Solution Explanation

The program uses the same undirected graph as BFS for comparison:

1. **dfsUtil:** The recursive helper function.
   - Mark the current node as visited and print it.
   - For each neighbor, if not visited, recursively call dfsUtil on it.

2. **dfs:** Creates the visited array and calls dfsUtil from the start node.

### Running the Program

```
Graph adjacency list:
0: 1 2
1: 0 3 4
2: 0 4
3: 1 5
4: 1 2 5
5: 3 4

DFS traversal starting from node 0: 0 1 3 5 4 2
```

Note: The output differs from BFS. DFS goes deep (0→1→3→5→4→2) while BFS goes level by level (0→1→2→3→4→5).
