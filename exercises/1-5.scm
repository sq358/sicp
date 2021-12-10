; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; For the above combination, if the we use `normal-order' evaluation
;; the result is 0 because we substitute the `test' with its definition
;; first and since we reach primitive operator we substitute the formal
;; parameter `x' with the value `0', hence the result 0.
;; With `applicative-orddr' we first substitute the operator `test' and
;; the given arguments, in this case `p'.  As the p definition returns
;; itself I'd assume we get into an infinite loop.
