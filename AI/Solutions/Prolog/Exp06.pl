fact(0, 1).
fact(N, F) :-
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.

go :- write('Factorial Calculator'), nl,
      write('Enter N: '), read(N),
      fact(N, F),
      write(N), write('! = '), write(F), nl.
