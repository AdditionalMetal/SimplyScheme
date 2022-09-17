;; 12.9 Write a procedure real-words that takes a sentence as argument
;;      and returns all the "real" words of the sentence, using the
;;      same rule as the real-word? procedure from Chapter 1.

;; From Chapter 1...
(define (real-word? wd)
  (not (member? wd '(a the an in of and for to with))))

(define (real-words sent)
  (if (empty? sent)
      '()
      (se (if (real-word? (first sent)) (first sent) '())
	      (real-words (bf sent)))
      )
  )
