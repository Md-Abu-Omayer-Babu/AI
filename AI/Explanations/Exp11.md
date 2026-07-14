# Experiment 11: Write a Prolog program for file handling.

## Problem Statement

Write a Prolog program that demonstrates file input/output operations: writing data to a file and reading it back.

## Introduction

Prolog provides built-in predicates for file handling. Files are opened with `open/3`, read from with `read/2` or `read_line_to_string/2`, and written to with `write/2`.

### Key Concepts

- **open/3:** `open(FileName, Mode, Stream)` — Opens a file in read, write, or append mode.
- **close/1:** `close(Stream)` — Closes the file stream.
- **write/2:** `write(Stream, Data)` — Writes data to the file.
- **read_line_to_string/2:** Reads one line from a file into a string variable.
- **repeat/fail loop:** A technique to loop until end-of-file is reached.

## Solution Explanation

1. **write_file:** Opens `output.txt` in write mode, writes three lines using `write/2` and `nl/1` (newline), then closes the file.
2. **read_file:** Opens the file in read mode, uses `repeat` and `read_line_to_string/2` to read each line until `end_of_file` is reached, printing each line.
3. The `go` predicate lets the user choose between write and read operations.

### Running the Program

```
?- go.
Prolog File Handling
1. Write to file
2. Read from file
Choose (1 or 2): 2.
File contents:
Hello from Prolog!
This is file handling example.
Line 3 of the file.
```
