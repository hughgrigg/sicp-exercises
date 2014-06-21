;;; Exercise 1.1
;; Below is a sequence of expressions. What is the result printed by the 
;; interpreter in response to each expression? Assume that the sequence is to be
;; evaluated in the order in which it is presented.

10           ; 10

(+ 5 3 4)    ; 12

(- 9 1)      ; 8

(/ 6 2)      ; 3

(+ 
	(* 2 4)
	(- 4 6)) ; 6

(define a 3)

(define b (+ a 1))

(+ 
	a
	b
	(* a b)) ; a + b + (a * b) -> 19

(= a b)      ; #f

(if (and 
		(> b a)        ; "If b is greater than a
		(< b (* a b))) ; and b is less than a * b"
	b
	a)       ; b -> 4

(cond ((= a 4) 6)         ; "If a = 4, be 6"
	  ((= b 4) (+ 6 7 a)) ; "Else if b = 4, be 6 + 7 + a"
	  (else 25))          ; "Else be 25"
                          ; b = 4 -> 6 + 7 + a -> 16

(+ 2 (if (> b a) b a)) ; Add 2 to:
					   ; if b > a: b
					   ; else a
					   ; b > a -> 2 + b -> 6

(*                    ; Multiply:
	(cond ((> a b) a) ; If a > b -> a 
	     ((< a b) b)  ; Else if a < b -> b
	     (else -1))   ; Else -1
   (+ a 1))           ; By a + 1
                      ; a < b -> b * (a + 1) -> 16

;; Results:
; 10
; 12
; 8
; 3
; 6
; #<unspecified>
; #<unspecified>
; 19
; #f
; 4
; 16
; 6
; 16