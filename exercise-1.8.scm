(define (square x) (* x x))

(define (newton-method x y) 
   (/ 
     (+ 
       (/ x (square y)) 
       (* 2 y)
     ) 
     3
   )
)

(display 10)
(newline)
