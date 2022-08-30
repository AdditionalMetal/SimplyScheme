(define (hang-letter letter guesses)
  (if (member? letter guesses)
      letter
      '_
      )  
  )

(define (hang actual guesses)
  (accumulate word (every (lambda (g) (hang-letter g guesses)) actual))
  )

;; stklos> (load "Chap09/9-8.scm")
;; stklos> (hang 'potsticker 'etaoi)
;; _ot_ti__e_
