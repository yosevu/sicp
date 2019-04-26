#lang sicp

; Version 1

; (define (sum-two-largest-squares x y z)
;   (cond
;     ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
;     ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
;     ((and (<= z x) (<= z y)) (+ (* x x) (* y y)))))

; (sum-two-largest-squares 3 1 2)

; Version 2

(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))

(define (sum-two-largest-squares x y z)
  (cond
    ((and (<= x y) (<= x z)) (sum-squares y z))
    ((and (<= y x) (<= y z)) (sum-squares x z))
    ((and (<= z x) (<= z y)) (sum-squares x y))))

(sum-two-largest-squares 1 1 1) ; 2
(sum-two-largest-squares 1 1 2) ; 5
(sum-two-largest-squares 1 2 2) ; 8
(sum-two-largest-squares 3 1 2) ; 13
(sum-two-largest-squares 3 2 1) ; 13
(sum-two-largest-squares 1 2 3) ; 13
(sum-two-largest-squares 1 3 2) ; 13
(sum-two-largest-squares 2 1 3) ; 13
(sum-two-largest-squares 2 3 1) ; 13
