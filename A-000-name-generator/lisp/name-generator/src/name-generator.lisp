#|
 This file is a part of name-generator
 (c) 2024 chu the pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: chu the pup <chufilthymutt@gmail.com>
|#

(in-package #:name-generator)

;; Define your project functionality here...

(defparameter *first-names*
  '("First-o" "Spice" "Paste" "Bleach" "Gap"
    "Port-o" "Sucklet" "Ants" "Ghoul" "Neither"
    "Prison" "Wedgie" "Nekeze" "Borgob" "Last-ly"
    "Mousepad" "Moth" "Ghost" "Scum" "Spit" "Hair"))

(defparameter *last-names*
  '("First-o" "Crombly" "Schteuwpid" "O'Flannigan"
    "Cape-o" "Port-o" "Freeborn" "Doubtsly"
    "O'Hanniflannigan" "O'Hannigan" "Lunger"
    "Creeper" "Last-ly" "Fitzgeraldpatrick"))

(defun greet (&optional (name "chu the pup"))
  (format T "Hello ~a from ~a!~&" name "name-generator"))

(defun help ()
  (format T "~&Usage:

  name-generator [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    ;; To properly parse command line arguments, use a third-party library such as
    ;; clingon, unix-opts, defmain, adopt… when needed.
    (help)
    (uiop:quit))
  (greet  (or (first argv)
              "dear lisp user")))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))

(progn
 (format t "~a " (nth (random (length *first-names*)) *first-names*))
 (format t "~a~&" (nth (random (length *last-names*)) *last-names*)))
