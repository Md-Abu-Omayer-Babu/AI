; Student info using PutProp and GetProp

(defun student (name roll)
  (setf (get 'student1 'name) name)
  (setf (get 'student1 'roll) roll))

; Set student details
(student "Alice" 101)

; Retrieve and print
(print (get 'student1 'name))  ; "Alice"
(print (get 'student1 'roll))  ; 101
