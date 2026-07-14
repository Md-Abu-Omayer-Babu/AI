; Area of a triangle: A = 0.5 * base * height

(defun area-triangle (base height)
  (* 0.5 base height))

(format t "~%Area of a Triangle~%")
(format t "===================~%~%")

(setq b 10)
(setq h 5)
(format t "Base: ~a, Height: ~a~%" b h)
(format t "Area: ~$~%" (area-triangle b h))

(setq b 7)
(setq h 12)
(format t "~%Base: ~a, Height: ~a~%" b h)
(format t "Area: ~$~%" (area-triangle b h))
