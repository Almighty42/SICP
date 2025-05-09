(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
   (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))
   )
)

(display (sine 12.15))
(newline)

(define (sine 12.15)
   (if (2)
      12.15
      (p (sine 4.05))
   )
)

(define (sine 4.05)
   (if (not (> 4.05 0.1))
      4.05
      (p (sine (/ 4.05 3.0)))
   )
)

(define (sine 1.35)
   (if (not (> (abs 1.35) 0.1))
      1.35
      (p (sine (/ 1.35 3.0)))
   )
)

(define (sine 0.45)
   (if (not (> (abs 0.45) 0.1))
      0.45
      (p (sine (/ 0.45 3.0)))
   )
)

(define (sine 0.15)
   (if (not (> (abs 0.15) 0.1))
      0.15
      (p 0.05)
   )
)

; NOTE: Answer for a) - p is applied 5 times in total
; NOTE: Answer for b) - Exponential 0(n)2
