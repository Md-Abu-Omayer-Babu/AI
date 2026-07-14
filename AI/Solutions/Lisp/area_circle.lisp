; Area of a circle: A = π * r^2

(defun area-circle (r)
  (* 3.1416 r r))

(format t "~%Area of a Circle~%")
(format t "================~%~%")

(setq radius 7)
(format t "Radius: ~a~%" radius)
(format t "Area: ~$~%" (area-circle radius))

(setq radius 5)
(format t "~%Radius: ~a~%" radius)
(format t "Area: ~$~%" (area-circle radius))
