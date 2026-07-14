bubble(List, Sorted) :-
    bubble_pass(List, NewList),
    (List == NewList -> Sorted = List ; bubble(NewList, Sorted)).

bubble_pass([X], [X]).
bubble_pass([X,Y|Rest], [Y|NewRest]) :-
    X > Y, !,
    bubble_pass([X|Rest], NewRest).
bubble_pass([X,Y|Rest], [X|NewRest]) :-
    bubble_pass([Y|Rest], NewRest).

go :- L = [5, 3, 8, 1, 9, 2],
      write('Original list: '), write(L), nl,
      bubble(L, S),
      write('Sorted list:   '), write(S), nl.
