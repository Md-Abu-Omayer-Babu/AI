insert_elem(X, L, [X|L]).
insert_elem(X, [H|T], [H|R]) :- insert_elem(X, T, R).

go :- L = [a, b, d, e],
      write('Original list: '), write(L), nl,
      write('Element to insert: c at position 3'), nl,
      insert_elem(c, L, Result),
      write('After insertion: '), write(Result), nl.
