(define (square x) (* x x))

(define (sumOfSquares x y)
  (+ (square x) (square y)
))

;; Truth Table
;; x   y   z
;; ----------
;; T   T   F
;; T   F   T
;; F   T   T

(define (largestSumOfSquare x y z) 
  (cond
    ((and (>= x z) (>= y z)) (sumOfSquares x y))
    ((and (>= x y) (>= x y)) (sumOfSquares x z)) 
    ((and (>= y x) (>= z x)) (sumOfSquares y z)) 
))

(largestSumOfSquare 1 2 3)
(largestSumOfSquare 3 2 1)
(largestSumOfSqaures 1 1 2)

