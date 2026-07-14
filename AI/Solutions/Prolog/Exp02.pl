max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).

go :- write('Enter first number: '), read(A),
      write('Enter second number: '), read(B),
      max(A, B, M),
      write('Maximum is '), write(M), nl.
