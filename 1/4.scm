;;; Exercise 1.4
;; Observe that our model of evaluation allows for combinations whose operators 
;; are compound expressions. Use this observation to describe the behavior of 
;; the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The if expression is evaluated to produce a + or - operator depending on the 
; value of b.
; The resulting operator is then used for the expression working on the operands
; a and b.