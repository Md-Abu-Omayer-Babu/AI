satisfy_goals([]).
satisfy_goals([G|Gs]) :- call(G), satisfy_goals(Gs).

greet :- write('Hello!'), nl.
show_time :- write('Time to code!'), nl.
done :- write('All goals satisfied.'), nl.

go :- Goals = [greet, show_time, done],
      write('Satisfying goals: '), write(Goals), nl, nl,
      satisfy_goals(Goals).
