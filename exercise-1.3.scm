(define (square x) (* x x))

(define (procedure x y z) 
  (cond 
    ((> x y) (if (> y z) 
               (+ (square x) (square y)) 
               (+ (square x) (square z)))
             )
    ((> y z) (+ (square x) (square y)))
    (else (+ (square z) (square y)))
  )
)

(display

(procedure 2 4 9)

)
(newline)


