(defpackage ecl-uiop
  (:use :cl)
  (:export #:main))

(in-package :ecl-uiop)

(defun main ()
  (if (uiop:emptyp "")
      (format t "Empty!~%")
      (format t "Not!~%")))
