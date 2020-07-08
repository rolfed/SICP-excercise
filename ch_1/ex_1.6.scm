; Parameters (x) is the radicand (the number whose square root we are trying to compute), 
; (guess)  

(define (average x y)
         (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

; We express our initial guess as 1.0 rather than 1 because LISP
; distinguishes between exact integers and decimal values. If we were to use
; 1 the function would yeild a fraction instead of a decimal.
; (pg 24) SICP
(sqrt-iter 1.0 4)

(define (new-if predicate then-clause else-clouse)
  (cond (predicate then-clause)
        (else else-clause)))
; The cond statement is wrapped as a function. Therefore, in 
; the applicative-order interpreter, the 'sqrt-iter' function in the else clause will be
; evaulated, and this will lead to an infinate recursion until stack overflow.
; Applicative-order evaulates arguments and then applies.

