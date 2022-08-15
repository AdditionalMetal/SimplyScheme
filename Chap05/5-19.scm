;; Write a procedure insert-and that takes a sentence of items and
;; returns with an "and" in the right place...
;;
;; (insert-and '(john bill wayne fred joey))
;; (john bill wayne fred and joey)
(define (insert-and sent) (sentence (bl sent) 'and (last sent)))
