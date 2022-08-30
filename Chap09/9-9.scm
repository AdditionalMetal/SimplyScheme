;; Use 9-8 with minor edits...
(define (hang-word letter guesses)
  (if (member? letter guesses)
      letter
      '()
      )  
  )

(define (common-words actual guesses)
  (every (lambda (g) (hang-letter g guesses)) actual)
  )

;; stklos> (load "Chap09/9-9.scm")
;; stklos> (hang '(first sentence is written here) '(second sentence is not written here))
;; (sentence is written here)
