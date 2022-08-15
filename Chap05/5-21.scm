;; Write a procedure query that turns a statement into a question by
;; swapping the first two words and adding a question mark to last
;; word:
;;
;; (query '(you are experienced))
;; (are you experienced?)
;;
;; (query '(i should have known better))
;; (should i have known better?)
(define (query sent)
  (sentence (item 2 sent) (item 1 sent) (bl (bf (bf sent))) (word (last sent) '?))
  )
