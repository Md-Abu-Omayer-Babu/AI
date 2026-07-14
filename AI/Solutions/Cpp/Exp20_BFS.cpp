#include <bits/stdc++.h>
using namespace std;

void bfs(vector<int> adj[], int start, int n) {
    vector<bool> visited(n, false);
    queue<int> q;
    visited[start] = true;
    q.push(start);

    cout << "BFS traversal starting from node " << start << ": ";
    while (!q.empty()) {
        int u = q.front(); q.pop();
        cout << u << " ";
        for (int v : adj[u]) {
            if (!visited[v]) {
                visited[v] = true;
                q.push(v);
            }
        }
    }
    cout << endl;
}

int main() {
    int n = 6;
    vector<int> adj[n];

    adj[0] = {1, 2};
    adj[1] = {0, 3, 4};
    adj[2] = {0, 4};
    adj[3] = {1, 5};
    adj[4] = {1, 2, 5};
    adj[5] = {3, 4};

    cout << "Graph adjacency list:" << endl;
    for (int i = 0; i < n; i++) {
        cout << i << ": ";
        for (int v : adj[i]) cout << v << " ";
        cout << endl;
    }
    cout << endl;

    bfs(adj, 0, n);

    return 0;
}
