(define (f n) 
  (if (< n 3) 
    n
    (+ (f (- n 1)) 
       (* (f (- n 2)) 2) 
       (* (f (- n 3)) 3))))

; (f 5)


(define (f n)
  (define (f-iter a b c count)
    (cond ((< n 3) n)
          ((<= count 0) a)
          (else (f-iter (+ a (* 2 b)
                             (* 3 c))
                             a b (- count 1)))))
(f-iter 2 1 0 (- n 2)))


; The procedure above is a recursive process because the calculation of some of the state information is deferred until a later call of the procedure.
; Defining an iterative procedure means we have to remove this property. 
; That means the iterative procedure has to keep track of all state information at 
; each step of the calculation in explicit variables.
; https://billthelizard.blogspot.com/2009/11/sicp-exercise-111.html#:~:text=and%20asks%20us%20to%20write,iterative%20procedures%20for%20the%20function.&text=Defining%20an%20iterative%20procedure%20means,the%20calculation%20in%20explicit%20variables.


; (f2 5)
