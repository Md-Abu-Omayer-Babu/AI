delete(_, [], []).
delete(X, [X | T], T).
delete(X, [H | T], [H | R]) :-
    X \= H,
    delete(X, T, R).
