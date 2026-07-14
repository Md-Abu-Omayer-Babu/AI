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
    graph['A'] = {{'B',2}, {'E',5}};
    graph['B'] = {{'C',1}, {'G',9}};
    graph['C'] = {};
    graph['E'] = {{'D',6}};
    graph['D'] = {{'G',1}};
    graph['G'] = {};

    map<char,int> heuristic = {{'A',11}, {'B',6}, {'C',99}, {'E',7}, {'D',1}, {'G',0}};

    cout << "Graph (Group-I Exam):" << endl;
    cout << "  A --2--> B --1--> C" << endl;
    cout << "  |        |" << endl;
    cout << "  5        9" << endl;
    cout << "  |        |" << endl;
    cout << "  E --6--> D --1--> G" << endl;
    cout << "\nHeuristics: A=11, B=6, C=99, E=7, D=1, G=0\n" << endl;

    aStar(graph, heuristic, 'A', 'G');

    return 0;
}
