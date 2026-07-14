gcd(X, 0, X).
gcd(0, Y, Y).
gcd(X, Y, G) :-
    X > 0, Y > 0,
    Z is X mod Y,
    Z \= 0,
    gcd(Y, Z, G).
gcd(X, Y, Y) :-
    X > 0, Y > 0,
    Z is X mod Y,
    Z = 0.

lcm(X, Y, L) :-
    gcd(X, Y, G),
    L is (X * Y) // G.
