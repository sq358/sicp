; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html
(define (square a) (* a a))

(define (fn a b c)
  (cond ((and (<= a b) (<= a c)) (+ (square b) (square c)))
        ((and (<= b a) (<= b c)) (+ (square a) (square c)))
        ((and (<= c a) (<= c b)) (+ (square a) (square b)))
   ))
