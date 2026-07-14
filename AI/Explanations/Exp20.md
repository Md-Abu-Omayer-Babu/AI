# Experiment 20: Write a C++ program to implement Breadth First Search algorithm.

## Problem Statement

Write a C++ program that implements the Breadth First Search (BFS) algorithm to traverse a graph starting from a given source node, visiting all reachable nodes level by level.

## Introduction

BFS is a graph traversal algorithm that visits nodes in order of their distance from the starting node. It explores all neighbors at the current depth before moving to nodes at the next depth level.

### How BFS Works

1. Start from the source node, mark it as visited, and add it to a queue.
2. While the queue is not empty:
   - Dequeue a node and process it (print it).
   - For each unvisited neighbor, mark it as visited and enqueue it.

### Key Concepts

- **Queue:** First-In-First-Out (FIFO) data structure ensures level-order traversal.
- **Visited array:** Tracks which nodes have been visited to avoid cycles and infinite loops.
- **Adjacency list:** A representation where each node has a list of its neighbors.
- **Time complexity:** O(V + E) where V = vertices, E = edges.

## Solution Explanation

The program uses an adjacency list to represent an undirected graph with 6 nodes:

1. Build the graph: each node's neighbors are stored in a vector.
2. The `bfs` function:
   - Creates a visited array (all false).
   - Marks the start node as visited and pushes it to the queue.
   - Loops while the queue is not empty:
     - Pops the front node, prints it.
     - For each neighbor, if not visited, mark visited and push to queue.

### Running the Program

```
Graph adjacency list:
0: 1 2
1: 0 3 4
2: 0 4
3: 1 5
4: 1 2 5
5: 3 4

BFS traversal starting from node 0: 0 1 2 3 4 5
```
