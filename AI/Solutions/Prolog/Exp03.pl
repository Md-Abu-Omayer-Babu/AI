grade(alice, math, 4.0, 3).
grade(alice, physics, 3.7, 4).
grade(alice, chemistry, 3.3, 3).
grade(bob, math, 3.0, 3).
grade(bob, physics, 2.7, 4).
grade(bob, chemistry, 3.7, 3).

gpa(Student, GPA) :-
    findall(GP * CR, grade(Student, _, GP, CR), Products),
    findall(CR, grade(Student, _, _, CR), Credits),
    sum_list(Products, TotalPoints),
    sum_list(Credits, TotalCredits),
    GPA is TotalPoints / TotalCredits.

sum_list([], 0).
sum_list([H|T], S) :- sum_list(T, S1), S is H + S1.

go :- write('Student GPA Calculator'), nl, nl,
      write('Alice GPA: '), gpa(alice, G1), write(G1), nl,
      write('Bob GPA: '), gpa(bob, G2), write(G2), nl.
