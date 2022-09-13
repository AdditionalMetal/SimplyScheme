;;  11.5 Write a procedure initials that takes a sentence as its
;;  argument and returns a sentence of the first letters in each of
;;  the sentence's words:
;;
;; > (initials '(if i needed someone))
;; (I I N S)

(define (initials sent)
  (if (empty? sent)
      sent
      (se (first(first sent)) (initials (bf sent)))
      )
  )
  
