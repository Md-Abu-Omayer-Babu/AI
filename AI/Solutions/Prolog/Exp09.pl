gcd(X, 0, X) :- X > 0, !.
gcd(0, Y, Y) :- Y > 0, !.
gcd(X, Y, G) :-
    X > 0, Y > 0,
    X1 is X mod Y,
    gcd(Y, X1, G).

lcm(X, Y, L) :-
    gcd(X, Y, G),
    L is X * Y / G.

go :- write('GCD and LCM Calculator'), nl,
      write('Enter first number: '), read(A),
      write('Enter second number: '), read(B),
      gcd(A, B, G),
      lcm(A, B, L),
      write('GCD('), write(A), write(', '), write(B), write(') = '), write(G), nl,
      write('LCM('), write(A), write(', '), write(B), write(') = '), write(L), nl.
