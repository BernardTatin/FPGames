;; first-cps-test

(define (myprint . l)
  (for-each (lambda(e) (display e)) l))
(define (cps-prim f)
 (lambda args
  (let ((r (reverse args)))
   ((car r) (apply f
             (reverse (cdr r)))))))
(define *-cps (cps-prim *))
(define +-cps (cps-prim +))
(define sqrt-cps (cps-prim sqrt))
(define (distance-cps x y k)
 (*-cps x x (lambda (x2)
          (*-cps y y (lambda (y2)
                   (+-cps x2 y2 (lambda (x2py2)
                              (sqrt-cps x2py2 k))))))))
(define (distance x y)
 (sqrt (+ (* x x) (* y y))))

(define test
  (lambda(x y)
    (myprint "x=" x " y=" y)
    (myprint " direct=" (distance x y))
    (distance-cps x y (lambda(e) (myprint " cps=" e "\n")))))

(test 3 4)
(test 0 3)
(test 3 0)
