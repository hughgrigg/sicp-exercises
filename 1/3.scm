;;; Exercise 1.3
;; Define a procedure that takes three numbers as arguments and returns the sum 
;; of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

; Return largest two of three numbers
(define (largest-two x y z)
	
)

; Return sum of squares of largest two of three numbers
(define (sum-squares-largest-two x y z)
	(if (>= x y) ; is x smallest?
		(sum-of-squares x (if (>= y z) y z)) ; no - is y or z larger?
		(sum-of-squares y (if (>= z x) z x)) ; maybe - is x or z larger?
	)
)

;; Testing:
(sum-squares-largest-two 1 2 3)    ; -> (3^2)+(2^2) = 13
(sum-squares-largest-two 8 2 5)    ; -> (8^2)+(5^2) = 89
(sum-squares-largest-two 7 7 7)    ; -> (7^2)+(7^2) = 98
(sum-squares-largest-two -1 0 17)  ; -> (17^2)+(-1^2) = 289
(sum-squares-largest-two -1 -2 -3) ; -> (-1^2)+(-2^2) = 5;

;; Results:
13
89
98
289
5