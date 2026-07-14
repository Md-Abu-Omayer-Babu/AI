concat([], L, L).
concat([H|T], L, [H|R]) :- concat(T, L, R).

go :- L1 = [a, b, c], L2 = [d, e, f],
      write('List 1: '), write(L1), nl,
      write('List 2: '), write(L2), nl,
      concat(L1, L2, Result),
      write('Concatenated: '), write(Result), nl.
