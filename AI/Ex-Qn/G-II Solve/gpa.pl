% GPA = sum(grade_point * credit) / sum(credit)

grade_point(A, 4.0).
grade_point(B, 3.0).
grade_point(C, 2.0).
grade_point(D, 1.0).
grade_point(F, 0.0).

gpa([], [], 0, 0, 0).
gpa([Grade | Grades], [Credit | Credits], TotalPoint, TotalCredit, GPA) :-
    grade_point(Grade, Point),
    gpa(Grades, Credits, RestPoint, RestCredit, _),
    TotalPoint is (Point * Credit) + RestPoint,
    TotalCredit is Credit + RestCredit,
    GPA is TotalPoint / TotalCredit.
