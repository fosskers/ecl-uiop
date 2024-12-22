(require :asdf)

;; Force ASDF to only look here for systems.
(asdf:initialize-source-registry `(:source-registry (:tree "/home/colin/code/common-lisp/ecl-uiop/") :ignore-inherited-configuration))

;; Load and compile the binary.
(format t "--- LOADING SYSTEM ---~%")
(asdf:load-system :ecl-uiop)
(format t "--- COMPILING EXECUTABLE ---~%")
(asdf:make :ecl-uiop)
(format t "--- DONE ---~%")

#+ecl
(si:exit)
