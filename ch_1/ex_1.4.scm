(define (aPlusAbsB a b)
  ((if (> b 0) - +) a b))
; A plus the absolute value of B

; (aPlusAbsB 0 1)
; (aPlusAbsB 1 1)
(aPlusAbsB 4 -1)
