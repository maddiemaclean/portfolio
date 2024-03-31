#lang racket
(define point% (class object%
                 (super-new)
                 (define/public (distance other)
                   (define other-x (send other get-x))
                   (define other-y (send other get-y))
                   (sqrt (+ (expt (- (send this get-x) other-x) 2)
                            (expt (- (send this get-y) other-y) 2))))
                 (define/public (set-x nx) (set! x nx))
                 (define/public (set-y ny) (set! y ny))
                 (define/public (set-z nz) (set! z nz))
                 (define/public (get-x) x)
                 (define/public (get-y) y)
                 (define/public (get-z) z)
                 (init-field x y z)))

(define p1 (make-object point% 9 3 7))
(define p2 (make-object point% -1 2 9))

(display "Distance between p1 and p2: ")
(displayln (send p1 distance p2))
