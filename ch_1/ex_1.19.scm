; 1.2.2 Tree Recursion - Fibonacci calculation via transformation
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)

  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1)))
  (printf "Details: " a b count))

(fib 3)

; Fib Sequence - 0 1 1 2 3 5 8 13
; Index -        1 2 3 4 5 6 7 8
; therefore (fib 3) should be the sum of index 2 and 3, which is 2

; (fib 3)
; (fib-iter (+ 1 0) 1 (- 3 1))
; NOTE: (fib-iter a b count)
; (fib-iter 1 1 2)
; (fib-iter (+ 1 1) 1 (- 2 1))
; (fib-iter 2 1 1)
; (fib-iter (+ 2 1) 2 (- 1 1))
; (fib-iter 3 2 0) ANSWER is 2


(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
    ((even? count)
    (fib-iter a 
              b
              p ; compute p
              q ; computer q

              (/ count 2)))
    (else (fib-iter (+ (* b q) (* a q) (* a p))
                    (+ (* b p) (* a q))
                    p
                    q
                    (- count 1)))))

(fib 5)
