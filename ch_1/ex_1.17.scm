(define (* a b)
  (define (double int) (+ int int)) ; double integer
  (define (halve int) (/ int 2)) ; halve integer
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))

(* 3 5)

