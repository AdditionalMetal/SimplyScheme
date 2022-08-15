;; Write a procedure knight that takes a person's name as its argument
;; and returns the name with "Sir" in front of it.
;;
;; (knight '(david wessel))
;; (sir david wessel)
(define (knight name) (sentence 'sir name))
