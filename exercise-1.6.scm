(define (new-if predicate then-clause else-clause)
   (cond (predicate then-clause)
         (else else-clause)
   )
)


(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
   (new-if (good-enough? guess x)
   guess
   (sqrt-iter (improve guess x) x)
   )
)

;NOTE: Altough I did have to go ahead and get help by watching a snippet from a lecture about SICP book, I did understand the issue
; The issue is that when "sqrt-iter" is called recursively ( in other words procedure sqrt-iter is calling itself inside itself ),
; the applicative order function states that every single argument has to be evaluated before any computation is done
;
;NOTE: This means that sqrt-iter is caught in a infinite loop because of this mechanism of evaluation.

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 137))
(newline)
