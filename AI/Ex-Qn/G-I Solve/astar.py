import heapq

graph = {
    'A': [('B', 2), ('E', 5)],
    'B': [('C', 1), ('G', 9)],
    'C': [],
    'E': [('D', 6)],
    'D': [('G', 1)],
    'G': []
}

heuristic = {
    'A': 11,
    'B': 6,
    'C': 99,
    'E': 7,
    'D': 1,
    'G': 0
}

def astar(graph, heuristic, start, goal):
    open_list = [(heuristic[start], 0, start, [start])]
    closed_set = set()

    print("A* Search Steps:\n")
    step = 1

    while open_list:
        f, g, node, path = heapq.heappop(open_list)

        if node in closed_set:
            continue

        print(f"Step {step}: Expand {node}")
        print(f"   g({node}) = {g}, h({node}) = {heuristic[node]}, f({node}) = {f}")
        print(f"   Path so far: {' → '.join(path)}")
        print(f"   OPEN list: {[(n, round(g_val + heuristic[n], 1)) for _, g_val, n, _ in sorted(open_list, key=lambda x: x[0])]}")
        print(f"   CLOSED set: {sorted(closed_set)}\n")

        closed_set.add(node)

        if node == goal:
            print(f"🎯 Goal {goal} reached!")
            print(f"Final Path: {' → '.join(path)}")
            print(f"Total Cost: {g}")
            return path, g

        for neighbor, cost in graph[node]:
            if neighbor not in closed_set:
                new_g = g + cost
                new_f = new_g + heuristic[neighbor]
                new_path = path + [neighbor]
                heapq.heappush(open_list, (new_f, new_g, neighbor, new_path))

        step += 1

    print("Goal not reachable")
    return None, None

astar(graph, heuristic, 'A', 'G')
