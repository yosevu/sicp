#lang sicp

; if b is greater than 0, it is positive so add a + b to use the absolute value of b
; if b is less than 0, it is negative so subtract a - b to use the absolute value of b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 -3) ; 5
(a-plus-abs-b -2 3) ; 1
(a-plus-abs-b -2 -3) ; 1
(a-plus-abs-b 2 3) ; 5