; Find maximum and minimum from a list of numbers

(defun find-max (lst)
  (if (null (cdr lst))
      (car lst)
      (max (car lst) (find-max (cdr lst)))))

(defun find-min (lst)
  (if (null (cdr lst))
      (car lst)
      (min (car lst) (find-min (cdr lst)))))

(setq numbers '(34 12 56 7 89 23))
(print (find-max numbers))  ; 89
(print (find-min numbers))  ; 7
