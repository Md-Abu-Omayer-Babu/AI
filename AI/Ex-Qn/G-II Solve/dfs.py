graph = {
    'A': ['B', 'C', 'D'],
    'B': ['E', 'F'],
    'C': [],
    'D': ['G'],
    'E': ['H'],
    'F': [],
    'G': [],
    'H': []
}

def dfs(graph, start, goal):
    visited = set()
    stack = [[start]]

    print("DFS Traversal Order:")
    while stack:
        path = stack.pop()
        node = path[-1]

        if node not in visited:
            print(node, end=' ')
            visited.add(node)

            if node == goal:
                print(f"\n\nGoal {goal} found!")
                print(f"Path: {' → '.join(path)}")
                return path

            for neighbor in reversed(graph[node]):
                if neighbor not in visited:
                    new_path = list(path)
                    new_path.append(neighbor)
                    stack.append(new_path)

    print(f"\nGoal {goal} not reachable")
    return None

dfs(graph, 'A', 'F')
