(format t "~%PutProp - Object Properties~%")
(format t "==========================~%~%")

(setf (get 'book 'title) "The Great Gatsby")
(setf (get 'book 'author) "F. Scott Fitzgerald")
(setf (get 'book 'year) 1925)
(setf (get 'book 'genre) "Novel")

(setf (get 'person 'name) "Alice")
(setf (get 'person 'age) 20)
(setf (get 'person 'major) "Computer Science")

(format t "Book Properties:~%")
(format t "  Title : ~a~%" (get 'book 'title))
(format t "  Author: ~a~%" (get 'book 'author))
(format t "  Year  : ~a~%" (get 'book 'year))
(format t "  Genre : ~a~%" (get 'book 'genre))

(format t "~%Person Properties:~%")
(format t "  Name : ~a~%" (get 'person 'name))
(format t "  Age  : ~a~%" (get 'person 'age))
(format t "  Major: ~a~%" (get 'person 'major))
