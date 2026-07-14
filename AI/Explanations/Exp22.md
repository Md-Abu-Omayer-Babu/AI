# Experiment 22: Write a C++ program to implement A* Search Algorithm.

## Problem Statement

Write a C++ program that implements the A* (A-Star) Search Algorithm to find the shortest path from a start node to a goal node in a weighted graph, using a heuristic function to guide the search.

## Introduction

A* is an informed search algorithm that combines the strengths of Dijkstra's algorithm (which finds shortest paths) and greedy best-first search (which uses heuristics to guide toward the goal). It uses a cost function `f(n) = g(n) + h(n)` where:
- `g(n)` = actual cost from start to node n
- `h(n)` = heuristic estimate of cost from node n to goal
- `f(n)` = estimated total cost through node n

### How A* Works

1. Start with the initial node in a priority queue (sorted by f-cost).
2. While the queue is not empty:
   - Pop the node with the lowest f-cost.
   - If it's the goal, reconstruct and return the path.
   - For each neighbor, compute new g-cost. If better than previously known, update and push to queue.
3. The algorithm is guaranteed to find the optimal path if the heuristic is admissible (never overestimates).

### Key Concepts

- **Priority Queue:** Always expands the most promising node first (lowest f-cost).
- **Heuristic function:** Must be admissible (optimistic) for optimality.
- **g-cost update:** If a shorter path to a node is found, update its cost and parent.
- **Path reconstruction:** Follow parent pointers from goal back to start.

## Solution Explanation

The program implements A* on a graph with 6 nodes:

1. **Graph representation:** Weighted adjacency list with `(neighbor, cost)` pairs.
2. **Heuristic:** Euclidean or Manhattan distance estimates to the goal (h-values are provided).
3. **A* algorithm:**
   - Priority queue stores nodes with their g and f costs.
   - g-cost array tracks the best known cost to each node.
   - Parent array tracks the path for reconstruction.
   - When goal is reached, reconstruct and print the path.

### Running the Program

```
Graph (node: neighbor, cost):
0 (h=6): (1,2) (2,4)
1 (h=4): (3,5) (4,3)
2 (h=5): (4,1)
3 (h=1): (5,2)
4 (h=2): (3,1) (5,6)
5 (h=0):

Path found: 0 1 4 3 5
Total cost: 8
```
