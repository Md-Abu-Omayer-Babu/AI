print_list([]).
print_list([H|T]) :- write(H), nl, print_list(T).

go :- L = [apple, banana, cherry, date],
      write('List: '), write(L), nl,
      write('Elements:'), nl,
      print_list(L).
