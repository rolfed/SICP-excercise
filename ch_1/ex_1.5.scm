(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

;(test 0 (p))

; Applicative order first evaluates the operator and operands and then applies the resulting
; procedure to the resulting arguments. Normal order evaluates by expanding and then reducing the equation.

; Using applicative-order evaluation, the method (test 0 (p)) never terminates, because (p) is infinitely
; expanded to itself
; (test 0 (p))
; (test 0 (p))
; (test 0 (p))
; etc...

; Using normal-order evaluation, the expression evaluates, step by step, to 0
; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if #t 0 (p))
; 0

; Great explanation https://stackoverflow.com/questions/16036139/seek-for-some-explanation-on-sicp-exercise-1-5/16049727#16049727
