;; 12.11 Write the procedure count, which returns the number of words
;;       in a sentence or the number of letters in a word.

(define (my-count sent)
  (if (empty? sent)
      0
      (+ 1 (my-count (bf sent)))
      )
  )

;; override existing count...
(define my-count count)
