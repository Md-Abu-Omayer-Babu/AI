; List operation functions

(setq list1 '(1 2 3))
(setq list2 '(4 5 6))

; append - combines lists
(print (append list1 list2))  ; (1 2 3 4 5 6)

; reverse - reverses a list
(print (reverse list1))  ; (3 2 1)

; length - returns number of elements
(print (length list1))  ; 3

; member - checks membership
(print (member 2 list1))   ; (2 3)
(print (member 7 list1))   ; NIL
