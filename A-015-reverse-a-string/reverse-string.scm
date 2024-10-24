#!/usr/bin/guile \
-e reverse-string -s
!#
(define (reverse-string args)
  (cond ((null? args) "")
        (else (display (list->string (reverse (string->list (cadr args)))))
              (newline))))
