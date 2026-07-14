#include <bits/stdc++.h>
using namespace std;

struct Node {
    char id;
    int g, f;
    vector<char> path;
    bool operator>(const Node& o) const { return f > o.f; }
};

void aStar(map<char, vector<pair<char,int>>>& graph,
           map<char,int>& heuristic, char start, char goal) {
    priority_queue<Node, vector<Node>, greater<Node>> pq;
    set<char> closed;
    int step = 1;

    pq.push({start, 0, heuristic[start], {start}});

    cout << "A* Search Steps:\n" << endl;

    while (!pq.empty()) {
        Node cur = pq.top(); pq.pop();

        if (closed.count(cur.id)) continue;

        cout << "Step " << step++ << ": Expand " << cur.id << endl;
        cout << "   g(" << cur.id << ") = " << cur.g
             << ", h(" << cur.id << ") = " << heuristic[cur.id]
             << ", f(" << cur.id << ") = " << cur.f << endl;
        cout << "   Path so far: ";
        for (size_t i = 0; i < cur.path.size(); i++)
            cout << (i ? " → " : "") << cur.path[i];
        cout << endl;

        closed.insert(cur.id);

        if (cur.id == goal) {
            cout << "\nGoal " << goal << " reached!" << endl;
            cout << "Final Path: ";
            for (size_t i = 0; i < cur.path.size(); i++)
                cout << (i ? " → " : "") << cur.path[i];
            cout << "\nTotal Cost: " << cur.g << endl;
            return;
        }

        for (auto& [next, cost] : graph[cur.id]) {
            if (!closed.count(next)) {
                int newG = cur.g + cost;
                int newF = newG + heuristic[next];
                vector<char> newPath = cur.path;
                newPath.push_back(next);
                pq.push({next, newG, newF, newPath});
            }
        }
    }
    cout << "Goal not reachable" << endl;
}

int main() {
    map<char, vector<pair<char,int>>> graph;
    graph['a'] = {{'b',4}, {'c',3}};
    graph['b'] = {{'a',4}, {'f',5}, {'e',12}};
    graph['c'] = {{'a',3}, {'e',10}, {'d',7}};
    graph['d'] = {{'c',7}, {'e',2}};
    graph['e'] = {{'b',12}, {'c',10}, {'d',2}, {'z',5}};
    graph['f'] = {{'b',5}, {'z',16}};
    graph['z'] = {{'f',16}, {'e',5}};

    map<char,int> heuristic = {
        {'a',14}, {'b',12}, {'c',11},
        {'d',6},  {'e',4},  {'f',11}, {'z',0}
    };

    cout << "Graph (Group-II Exam):" << endl;
    cout << "  a --4-- b --5-- f" << endl;
    cout << "  |       |       |" << endl;
    cout << "  3      12      16" << endl;
    cout << "  |       |       |" << endl;
    cout << "  c --10-- e --5-- z" << endl;
    cout << "  |       |" << endl;
    cout << "  7       2" << endl;
    cout << "  |       |" << endl;
    cout << "  d-------" << endl;
    cout << "\nHeuristics: a=14, b=12, c=11, d=6, e=4, f=11, z=0\n" << endl;

    aStar(graph, heuristic, 'a', 'z');

    return 0;
}
