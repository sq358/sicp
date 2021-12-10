; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; I expect with the `new-if' we get into an infinite loop because the procedure
;; follows the applicative evaluation model which needs to evaluate both operator
;; and operand; in this case, one of the operands is a recursive call, hence the
;; program nevers stops.
