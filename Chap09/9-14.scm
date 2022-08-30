;;  9.14 Write a procedure substitute that takes three arguments, two
;;  words and a sentence. It should return a version of the sentence,
;;  but with every instance of the second word replaced with the first
;;  word:

;; > (substitute 'maybe 'yeah '(she loves you yeah yeah yeah))
;; (SHE LOVES YOU MAYBE MAYBE MAYBE)

(define (substitute new old lyric)
  (every (lambda(x)(if (equal? x old) new x)) lyric)
  )


;; stklos> (load "Chap09/9-14.scm")
;; stklos> (substitute 'maybe 'yeah '(she loves you yeah yeah yeah))
;; (she loves you maybe maybe maybe)
