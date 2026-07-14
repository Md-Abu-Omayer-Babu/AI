cube(X, Y) :- Y is X * X * X.

go :- write('Cube Calculator'), nl,
      write('Enter a number: '), read(N),
      cube(N, C),
      write(N), write('^3 = '), write(C), nl.
