#include <bits/stdc++.h>
using namespace std;

bool dfs(map<char, vector<char>>& graph, char node, char goal,
         map<char, bool>& visited, vector<char>& path) {
    visited[node] = true;
    path.push_back(node);
    cout << node << " ";

    if (node == goal) {
        cout << "\n\nGoal " << goal << " found!" << endl;
        cout << "Path: ";
        for (size_t i = 0; i < path.size(); i++)
            cout << (i ? " → " : "") << path[i];
        cout << endl;
        return true;
    }

    for (char next : graph[node])
        if (!visited[next])
            if (dfs(graph, next, goal, visited, path))
                return true;

    path.pop_back();
    return false;
}

int main() {
    map<char, vector<char>> graph;
    graph['A'] = {'B', 'C', 'D'};
    graph['B'] = {'E', 'F'};
    graph['C'] = {};
    graph['D'] = {'G'};
    graph['E'] = {'H'};
    graph['F'] = {};
    graph['G'] = {};
    graph['H'] = {};

    cout << "Graph (Group-II Exam):" << endl;
    cout << "  A → B, A → C, A → D" << endl;
    cout << "  B → E, B → F" << endl;
    cout << "  D → G, E → H" << endl;
    cout << "  Goal: F" << endl << endl;

    cout << "DFS Traversal Order: ";
    map<char, bool> visited;
    vector<char> path;
    dfs(graph, 'A', 'F', visited, path);

    return 0;
}
