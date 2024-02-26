#|
 This file is a part of name-generator
 (c) 2024 chu the pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: chu the pup <chufilthymutt@gmail.com>
|#

(in-package :asdf-user)

(defsystem "name-generator-tests"
  :description "Test suite for the name-generator system"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :depends-on (:name-generator
               :fiveam)
  :license "GNU GPL-3.0"
  :serial T
  :components ((:module "tests"
                        :serial T
                        :components ((:file "packages")
                                     (:file "test-name-generator"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
