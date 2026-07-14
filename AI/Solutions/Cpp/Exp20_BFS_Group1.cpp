#include <bits/stdc++.h>
using namespace std;

void bfs(map<char, vector<char>>& graph, char start, char goal) {
    map<char, bool> visited;
    queue<vector<char>> q;
    q.push({start});

    cout << "BFS Traversal Order: ";
    while (!q.empty()) {
        vector<char> path = q.front(); q.pop();
        char node = path.back();

        if (visited[node]) continue;
        cout << node << " ";
        visited[node] = true;

        if (node == goal) {
            cout << "\n\nGoal " << goal << " found!" << endl;
            cout << "Path: ";
            for (size_t i = 0; i < path.size(); i++)
                cout << (i ? " → " : "") << path[i];
            cout << endl;
            return;
        }

        for (char next : graph[node])
            if (!visited[next]) {
                vector<char> newPath = path;
                newPath.push_back(next);
                q.push(newPath);
            }
    }
    cout << "\nGoal not reachable" << endl;
}

int main() {
    map<char, vector<char>> graph;
    graph['A'] = {'B', 'C', 'D'};
    graph['B'] = {'E', 'F'};
    graph['C'] = {'F'};
    graph['D'] = {'G'};
    graph['E'] = {'H'};
    graph['F'] = {};
    graph['G'] = {};
    graph['H'] = {};

    cout << "Graph (Group-I Exam):" << endl;
    cout << "  A → B, A → C, A → D" << endl;
    cout << "  B → E, C → F, D → G" << endl;
    cout << "  E → H" << endl;
    cout << "  Goal: F" << endl << endl;

    bfs(graph, 'A', 'F');

    return 0;
}
