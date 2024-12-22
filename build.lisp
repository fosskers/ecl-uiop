(require :asdf)

;; Force ASDF to only look here for systems.
(asdf:initialize-source-registry `(:source-registry (:tree ,(uiop:getcwd)) :ignore-inherited-configuration))

;; Load and compile the binary.
(format t "--- LOADING SYSTEM ---~%")
(asdf:load-system :ecl-uiop)
(format t "--- COMPILING EXECUTABLE ---~%")

#+ecl
(asdf:make-build :ecl-uiop
                 :type :program
                 :move-here #p"./"
                 :epilogue-code '(progn (ecl-uiop:main) (si:exit)))

(format t "--- DONE ---~%")

#+ecl
(si:exit)
