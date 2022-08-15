;; Try the following and explain the results:
;; (define (ends word)
;;   (word (first word) (last word)))
;;
;; Should result in error - word is keyword so it can't bind as a
;; variable.
;;
;; This would be better...
(define (ends wd)
  (word (first wd) (last wd)))
;; Now you'll get a two letter word with the first and last letter of the input
;; john -> jn


;; Broken version for testing pleasure
(define (endsBroken word)
  (word (first word) (last word)))
