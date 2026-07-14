delete_elem(_, [], []).
delete_elem(X, [X|T], R) :- delete_elem(X, T, R).
delete_elem(X, [H|T], [H|R]) :- X \= H, delete_elem(X, T, R).

go :- L = [a, b, c, b, d],
      write('Original list: '), write(L), nl,
      write('Element to delete: b'), nl,
      delete_elem(b, L, Result),
      write('After deletion:  '), write(Result), nl.
