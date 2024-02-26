#|
 This file is a part of name-generator
 (c) 2024 chu the pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: chu the pup <chufilthymutt@gmail.com>
|#

(load "name-generator.asd")

(load "name-generator-tests.asd")

(ql:quickload "name-generator-tests")

(in-package #:name-generator-tests)

(uiop:quit (if (run-all-tests) 0 1))
