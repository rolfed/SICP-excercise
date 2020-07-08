(define (average x y)
         (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

; Modified version to look at difference between iterations
; Modified the less than to less than or equal to so the procedure
; properly handles 0
(define (good-enough? guess x)
  (<= (abs (- (square guess) x)) 
     (* guess 0.0001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(sqrt-iter 10.0 144)
; (sqrt-iter 0.33 0.25)

; For small radicand numbers, the approximation can terminate early 
; due to the comparatively large tolerance, thereby leading to
; a significant inaccurate result. While large radicand numbers, the 
; givin tolerance may take unbearable time or even impossible
; to reach since the approximation is too slow
; or hte value has gone beyond the machine's floating point
; precision
