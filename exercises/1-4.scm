; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

;; Defines a procedure that returns the sum of the first input parameter to the
;; absolute value of the second input parameter.
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
