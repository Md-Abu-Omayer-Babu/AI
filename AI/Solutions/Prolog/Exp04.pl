teaches(dr_smith, math).
teaches(dr_smith, physics).
teaches(dr_jones, chemistry).
teaches(dr_lee, computer_science).

studies(alice, math).
studies(alice, physics).
studies(bob, math).
studies(bob, chemistry).
studies(charlie, computer_science).
studies(charlie, math).

teaches_student(P, S) :- teaches(P, C), studies(S, C).

go :- write('Student-Professor Relationships'), nl, nl,
      write('Who does Dr. Smith teach?'), nl,
      teaches_student(dr_smith, S1), write('  - '), write(S1), nl, fail.
go :- write('Who teaches Alice?'), nl,
      teaches_student(P, alice), write('  - '), write(P), nl, fail.
go.
