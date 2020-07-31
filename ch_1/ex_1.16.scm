(define (expt n e) 
    (if (= e 0)
    1
    (* n (expt n (- e 1)))))

; (expt 2 2)


(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
    product)
  (expt-iter b 
             (- counter 1)
             (* b product)))

; (expt 2 2)


(define (expt b n)
  (fast-expt b n))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


; (expt 2 3)

(define (fast-expt b n)
  (define (fast-iter b counter product)
    (if (= counter 0)
      product
      (if (even? counter)
        (fast-iter (square b) (/ counter 2) product)
        (fast-iter b (- counter 1) (* product b)))))
(fast-iter b n 1))
