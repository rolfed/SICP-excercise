(define (average x y)
         (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (<= (abs (- (square guess) x)) 
     (* guess 0.0001)))

(define (approximation? guess x)
  (<= (abs (/ (+ (square (/ x guess)) (* 2 guess )) 3 ))))

(define (sqrt-iter guess x)
  (if (approximation? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(sqrt-iter 10.0 144)
