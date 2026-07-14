import heapq

graph = {
    'a': [('b', 4), ('c', 3)],
    'b': [('a', 4), ('f', 5), ('e', 12)],
    'c': [('a', 3), ('e', 10), ('d', 7)],
    'd': [('c', 7), ('e', 2)],
    'e': [('b', 12), ('c', 10), ('d', 2), ('z', 5)],
    'f': [('b', 5), ('z', 16)],
    'z': [('f', 16), ('e', 5)]
}

heuristic = {
    'a': 14,
    'b': 12,
    'c': 11,
    'd': 6,
    'e': 4,
    'f': 11,
    'z': 0
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

        open_entries = [(n, round(gv + heuristic[n], 1))
                        for _, gv, n, _ in sorted(open_list, key=lambda x: x[0])]
        print(f"   OPEN list: {open_entries}")
        print(f"   CLOSED set: {sorted(closed_set)}\n")

        closed_set.add(node)

        if node == goal:
            print(f"Goal {goal} reached!")
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

astar(graph, heuristic, 'a', 'z')
