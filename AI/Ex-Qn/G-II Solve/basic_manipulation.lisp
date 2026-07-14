; Basic list manipulation functions

(setq my-list '(a b c d))

; car - returns first element
(print (car my-list))  ; A

; cdr - returns rest of the list
(print (cdr my-list))  ; (B C D)

; cons - adds element to front
(print (cons 'x my-list))  ; (X A B C D)

; list - creates a new list
(print (list 1 2 3))  ; (1 2 3)
