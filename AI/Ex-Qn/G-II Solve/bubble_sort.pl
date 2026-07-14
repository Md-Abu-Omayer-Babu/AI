bubble_sort(List, Sorted) :-
    swap(List, Swapped),
    !,
    bubble_sort(Swapped, Sorted).
bubble_sort(Sorted, Sorted).

swap([X, Y | Rest], [Y, X | Rest]) :-
    X > Y.
swap([Z | Rest], [Z | Swapped]) :-
    swap(Rest, Swapped).
