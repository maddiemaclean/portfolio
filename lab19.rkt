#lang racket
(require racket/class)

(define point% (class object%
                 (super-new)
                 (define/public (distance other)
                 (define/public (get-dist) sqrt (+ (expt (- (send this get-x) (send other get-x)) 2) (expt (- (send this get-y) (send other get-y)) 2)))) ; unbound identifier in other.x
                 (define/public (set-x nx) (set! x nx)) ; should be (set! x nx) rather than (= x nx)
                 (define/public (set-y ny) (set! y ny)) ; same as above but for y
                 (define/public (set-z nz) (set! z nz))
                 (define/public (get-x) x);missing accessors
                 (define/public (get-y) y)
                 (define/public (get-z) z)
                   (init-field x y)))

(define p1 (make-object point% 9 3 7))
(define p2 (make-object point% -1 2 9))
(send p1 distance p2)

(define (checkLength point1 point2 length)
  (cond
  []
  [else ]))
