; NOTE: Square of a number
(define (square x) (* x x))

; NOTE: Average of 2 numbers
(define (average x y) (/ (+ x y) 2))

; NOTE: Takes the guess and uses the average procedure to get closer to a accurate guess of a square root number
(define (improve guess x) (average guess (/ x guess)))

; NOTE: Used to terminate the process when the accuracy matches the number in procedure
(define (good-enough guess x) 
  (< (abs (- (square guess) x)) 0.001)
)

; NOTE: 
(define (sqrt-iter guess x) 
  (if (good-enough guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)
