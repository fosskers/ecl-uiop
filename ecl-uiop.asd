(defsystem "ecl-uiop"
  :version "0.0.1"
  :author "Colin Woodbury <colin@fosskers.ca>"
  :homepage "https://github.com/fosskers/ecl-uiop"
  :depends-on ()
  :build-operation "program-op"
  :build-pathname "ecl-uiop"
  :entry-point "ecl-uiop:main"
  :components ((:module "src" :components ((:file "main")))))
