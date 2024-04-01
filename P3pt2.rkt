#lang racket
(define BST% (class object%(init-field root)
               (define/public (insert value)
                  (define/public (insert-helper nodeIn)
                    (cond
                      [(null? nodeIn)(set! root (new LetterNode%(value value)))]
                      [(<value(send nodeIn get-letter))
                       (cond (send nodeIn get-left))
                        [(insert-helper(send nodeIn get-left))
                         (send nodeIn set-left(new LetterNode%(value value)))]]
                      [(>value(send nodeIn get-letter))
                       (cond (send nodeIn get-right))
                        [(insert-helper(send nodeIn get-right))
                         (send nodeIn set-right(new LetterNode%(value value)))]]
                      [else(send nodeIn increment-frequency)])))

               (define/public (print-tree nodeIn)
                 (unless(null? nodeIn)
                   (print-tree(send nodeIn get-left))
                 (send nodeIn print)
                 (unless(null? nodeIn)
                   (print-tree(send node get-right))))
                 (send nodeIn print)))))
