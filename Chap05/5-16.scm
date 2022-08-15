;; Write a procedure two-first that takes two words as arguments,
;; returning a two-leter word containing the first letters of the two
;; arguments.
;;
;; (two-first 'brian 'epstein)
;; be

(define (two-first a b) (word (first a) (first b)))

;; Now write a procedure two-first-sent that takes a two-word sentence
;; as argument, returning a two-letter word containing the first
;; leters of the two words.
;;
;; (two-first-sent '(brian eps))
;; be
(define (two-first-sent sent) (word (item 1 (item 1 sent)) (item 1 (item 2 sent))))
