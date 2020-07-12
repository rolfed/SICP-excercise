(define (square x) (* x x))

(define (square x)
  (exp (double (log x))))

(define (double x) (+ x x))

(square 1)
; (double 2)
