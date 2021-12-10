;; Structure and Interpretation of Computer Programs 2nd Edition:
;; https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-1.html#titlepage

;; 2021 maymandi
;; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? previous-guess guess)
  (< (abs (- previous-guess guess)) 0.001))

(define (sqrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
          guess
          (sqrt-iter guess (improve guess x)
                     x)))
(define (sqrt x)
  (sqrt-iter 10 0.1 x))

(sqrt 10)
