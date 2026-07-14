(format t "~%Additional List Manipulation Functions~%")
(format t "========================================~%~%")

(setq lst '(a b c b d e b))
(format t "Original list: ~a~%~%" lst)

(format t "1. member - checks membership~%")
(format t "   (member 'c '~a) => ~a~%" lst (member 'c lst))
(format t "   (member 'z '~a) => ~a~%~%" lst (member 'z lst))

(format t "2. reverse - reverses list~%")
(setq rev (reverse lst))
(format t "   (reverse '~a) => ~a~%~%" lst rev)

(format t "3. length - returns list length~%")
(format t "   (length '~a) => ~a~%~%" lst (length lst))

(format t "4. remove - removes all occurrences~%")
(setq removed (remove 'b lst))
(format t "   (remove 'b '~a) => ~a~%~%" lst removed)

(format t "5. subst - substitutes elements~%")
(setq sub (subst 'x 'b lst))
(format t "   (subst 'x 'b '~a) => ~a~%" lst sub)
