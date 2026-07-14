from collections import deque

graph = {
    'A': ['B', 'C', 'D'],
    'B': ['E', 'F'],
    'C': ['F'],
    'D': ['G'],
    'E': ['H'],
    'F': [],
    'G': [],
    'H': []
}

def bfs(graph, start, goal):
    visited = set()
    queue = deque([[start]])

    print("BFS Traversal Order:")
    while queue:
        path = queue.popleft()
        node = path[-1]

        if node not in visited:
            print(node, end=' ')
            visited.add(node)

            if node == goal:
                print(f"\n\nGoal {goal} found!")
                print(f"Path: {' → '.join(path)}")
                return path

            for neighbor in graph[node]:
                if neighbor not in visited:
                    new_path = list(path)
                    new_path.append(neighbor)
                    queue.append(new_path)

    print(f"\nGoal {goal} not reachable")
    return None

bfs(graph, 'A', 'F')
