(define (fast-mult a b)

  (define (double x) (+ x x))
  (define (halve x) (/ x 2))


  (define (mult-iter a counter sum)
    (cond ((= counter 0) 
           sum)
          ((even? counter)
           (mult-iter (double a) (halve counter) sum))
          (else 
            (mult-iter a (- counter 1) (+ sum a)))))
  (mult-iter a b 0))

  (fast-mult 2 4)
