#lang racket

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

#|

Normal order

(test 0 (p))

(if (= 0 0) ;
    0 ; returns 0
    (p)

(if #t
    0 ; returns 0
    (p)) ; not reached

Applicative order

(test 0 (p)) ; (p) expands to

(test 0 (p)) ; (p) expands to

(test 0 (p)) ; infinite expansion to self

|#
