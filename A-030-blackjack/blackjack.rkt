#lang racket
(define card%
  (class object%
    (init suite card-value)      ; init arg
    (define current-suite suite) ; field
    (define current-value card-value) ; field
    (super-new) ; superclass init
    (define/public (get-suite)
      current-suite)
    (define/public (get-value)
      current-value)))
