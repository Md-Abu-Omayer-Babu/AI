#include <bits/stdc++.h>
using namespace std;

void dfsUtil(vector<int> adj[], int u, vector<bool>& visited) {
    visited[u] = true;
    cout << u << " ";
    for (int v : adj[u])
        if (!visited[v])
            dfsUtil(adj, v, visited);
}

void dfs(vector<int> adj[], int start, int n) {
    vector<bool> visited(n, false);
    cout << "DFS traversal starting from node " << start << ": ";
    dfsUtil(adj, start, visited);
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

    dfs(adj, 0, n);

    return 0;
}
