(define (inc x) (+ x 1))

(define (dec x) (- x 1))

(define (+ a b)
   (if (= a 0)
      b
      (inc (+ (dec a) b))
   )
)

(define (+ a b)
   (if (= a 0)
      b
      (+ (dec a) (inc b))
   )
)

(display (+ 4 5))
(newline)


(define (+ a b)
   (if (= a 0)
      b
      (+ (+ (- a 1) b) 1)
   )
)


