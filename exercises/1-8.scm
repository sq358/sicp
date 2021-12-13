;; Structure and Interpretation of Computer Programs 2nd Edition:
;; https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-1.html#titlepage

;; 2021 maymandi
;; Using https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

(define (improve r a)
  (* (/ 1 3) (+ (/ r (* a a)) (* 2 a))))

(define (fun r a)
  (abs (- (* a a a) r)))

(define (good-enough? r a)
  (<= (fun r a) 0.1))

(define (cubert-iter r a)
  (if (good-enough? r a)
          a
          (cubert-iter r (improve r a))))
(define (cubert r)
  (cubert-iter r r))

(cubert 8)
