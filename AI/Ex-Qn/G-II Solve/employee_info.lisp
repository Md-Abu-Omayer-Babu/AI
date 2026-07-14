; Employee info using PutProp and GetProp

(defun employee (name rank)
  (setf (get 'emp1 'name) name)
  (setf (get 'emp1 'rank) rank))

; Set employee details
(employee "John Doe" "Manager")

; Retrieve and print
(print (get 'emp1 'name))  ; "John Doe"
(print (get 'emp1 'rank))  ; "Manager"
