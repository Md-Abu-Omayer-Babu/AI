(defun list-max (lst)
  (if (null (cdr lst))
      (car lst)
      (max (car lst) (list-max (cdr lst)))))

(defun list-min (lst)
  (if (null (cdr lst))
      (car lst)
      (min (car lst) (list-min (cdr lst)))))

(format t "~%Maximum and Minimum of Numbers~%")
(format t "==============================~%~%")

(setq nums '(34 78 12 56 89 23 45))
(format t "Numbers: ~a~%" nums)
(format t "Maximum: ~a~%" (list-max nums))
(format t "Minimum: ~a~%" (list-min nums))
