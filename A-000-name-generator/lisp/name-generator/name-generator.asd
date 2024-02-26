#|
 This file is a part of name-generator
 (c) 2024 chu the pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: chu the pup <chufilthymutt@gmail.com>
|#

(in-package :asdf-user)

(defsystem "name-generator"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description "a name generator"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial T
  :components ((:module "src"
                        :serial T
                        :components ((:file "packages")
                                     (:file "name-generator"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "name-generator"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "name-generator:main")
