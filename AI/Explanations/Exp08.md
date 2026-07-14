# Experiment 08: Write a Prolog program to satisfy a list of goals.

## Problem Statement

Write a Prolog program that takes a list of goals (predicate names) and executes each one in order.

## Introduction

In Prolog, predicates can be called dynamically using the `call/1` built-in predicate. This allows us to treat predicate names as data and execute them programmatically.

### Key Concepts

- **call/1:** Takes a term and tries to prove it as a goal. For example, `call(write('Hello'))` executes `write('Hello')`.
- **List processing:** Use the head-tail pattern to process each goal in the list.
- **Recursive execution:** Process the first goal, then recursively process the rest.

## Solution Explanation

The predicate `satisfy_goals/1` processes a list of goals:

```prolog
satisfy_goals([]).           % Base case: no goals left
satisfy_goals([G|Gs]) :-    % Recursive case
    call(G),                 % Execute the current goal
    satisfy_goals(Gs).       % Process remaining goals
```

1. If the list is empty, we're done.
2. Otherwise, take the first goal G, call it using `call(G)`, then recursively process the rest.

### Running the Program

```
?- go.
Satisfying goals: [greet, show_time, done]

Hello!
Time to code!
All goals satisfied.
```
