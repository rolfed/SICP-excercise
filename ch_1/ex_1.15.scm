(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* (cube x))))

(define (sine angle) 
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

(sine 12.15)


; (sine 12.15)
; (p (sine (4.05)))
; (p (sine (p (1.35))))
; (p (sine (p (p (0.45)))))
; (p (sine (p (p (p (0.15))))))
; (p (sine (p (p (p (p (0.05)))))))

; p is applied 5 times 
; The order of growth is 0(log a)
; Total number of steps is (ceiling (/ (log (/ 12.15 0.1)) (log 3)))
; Order of growth is o(log(x))
(ceiling (/ (log (/ 12.15 0.1)) (log 3)))
