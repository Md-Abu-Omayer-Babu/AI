#include <bits/stdc++.h>
using namespace std;

struct Node {
    int id, g, f;
    bool operator>(const Node& o) const { return f > o.f; }
};

void aStar(vector<pair<int,int>> adj[], int h[], int start, int goal, int n) {
    priority_queue<Node, vector<Node>, greater<Node>> pq;
    vector<int> gCost(n, INT_MAX), parent(n, -1);
    gCost[start] = 0;
    pq.push({start, 0, h[start]});

    while (!pq.empty()) {
        Node cur = pq.top(); pq.pop();
        int u = cur.id;
        if (u == goal) {
            cout << "Path found: ";
            vector<int> path;
            for (int v = goal; v != -1; v = parent[v])
                path.push_back(v);
            reverse(path.begin(), path.end());
            for (int v : path) cout << v << " ";
            cout << "\nTotal cost: " << gCost[goal] << endl;
            return;
        }
        for (auto& [v, w] : adj[u]) {
            int newG = gCost[u] + w;
            if (newG < gCost[v]) {
                gCost[v] = newG;
                parent[v] = u;
                pq.push({v, newG, newG + h[v]});
            }
        }
    }
    cout << "No path found!" << endl;
}

int main() {
    int n = 6;
    vector<pair<int,int>> adj[n];

    adj[0] = {{1, 2}, {2, 4}};
    adj[1] = {{3, 5}, {4, 3}};
    adj[2] = {{4, 1}};
    adj[3] = {{5, 2}};
    adj[4] = {{3, 1}, {5, 6}};

    int h[] = {6, 4, 5, 1, 2, 0};

    cout << "Graph (node: neighbor, cost):" << endl;
    for (int i = 0; i < n; i++) {
        cout << i << " (h=" << h[i] << "): ";
        for (auto& [v, w] : adj[i]) cout << "(" << v << "," << w << ") ";
        cout << endl;
    }
    cout << endl;

    aStar(adj, h, 0, 5, n);

    return 0;
}
