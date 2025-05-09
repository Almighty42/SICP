(define (function n)
   (cond 
      ((< n 3) n)
      ((> n 3) 
         (+
            (function (- n 1))
            (* (function (- n 2)) 2)
            (* (function (- n 3)) 3)
         )
      )
   )
)

(define (f n) 
    (cond ((< n 3) n) 
         (else (+ (f (- n 1)) 
                  (* 2 (f (- n 2))) 
                  (* 3 (f (- n 3)))))))

(display (f 4))
(newline)
