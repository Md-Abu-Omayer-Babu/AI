(format t "~%Basic List Manipulation Functions~%")
(format t "==================================~%~%")

(setq lst '(a b c d e))
(format t "Original list: ~a~%~%" lst)

(format t "1. car - returns first element~%")
(format t "   (car '~a) => ~a~%~%" lst (car lst))

(format t "2. cdr - returns list without first element~%")
(format t "   (cdr '~a) => ~a~%~%" lst (cdr lst))

(format t "3. cons - adds element to front~%")
(format t "   (cons 'x '~a) => ~a~%~%" lst (cons 'x lst))

(format t "4. list - creates a list~%")
(format t "   (list 'p 'q 'r) => ~a~%~%" (list 'p 'q 'r))

(format t "5. atom - checks if value is an atom~%")
(format t "   (atom 'x) => ~a~%" (atom 'x))
(format t "   (atom '~a) => ~a~%~%" lst (atom lst))

(format t "6. append - joins two lists~%")
(setq lst2 '(x y z))
(format t "   (append '~a '~a) => ~a~%" lst lst2 (append lst lst2))
