(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000001))

(define (sqrt-iter guess x)
   (if (good-enough? guess x)
   guess
   (sqrt-iter (improve guess x) x)
   )
)

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 23511123))
(newline)

;NOTE: When testing the example with very large numbers things work well
; However smaller numbers ( for example 1.02 ) return 1.01 which isn't accurate at all
; Expanding the number 0.01 in "good-enough?" procedure makes this 1.02 example much more accurate
