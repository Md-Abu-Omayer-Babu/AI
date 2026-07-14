edge(a, b). edge(b, c). edge(c, a).
edge(c, d). edge(d, e). edge(e, f).

path(X, Y, Visited) :-
    edge(X, Y),
    not(member(Y, Visited)).
path(X, Y, Visited) :-
    edge(X, Z),
    not(member(Z, Visited)),
    path(Z, Y, [Z|Visited]).

reachable(X, Y) :- path(X, Y, [X]).

go :- write('Cyclic Graph Path Finder'), nl, nl,
      write('Edges: a-b, b-c, c-a, c-d, d-e, e-f'), nl, nl,
      write('Path from a to f: '),
      (reachable(a, f) -> write('Yes') ; write('No')), nl,
      write('Path from a to d: '),
      (reachable(a, d) -> write('Yes') ; write('No')), nl,
      write('Path from b to c: '),
      (reachable(b, c) -> write('Yes') ; write('No')), nl.
