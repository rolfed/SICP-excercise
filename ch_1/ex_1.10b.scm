
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n)) ; 2n

(define (g n) (A 1 n)) ; 0 for n = 0, 2^{n} for n > 0 

(define (h n) (A 2 n)) ; 0 for n = 0, 2 for n = 1, 2^2^... (n-1 times) for n > 1 

(define (k n) (* 5 n n)) ; 5n^2
