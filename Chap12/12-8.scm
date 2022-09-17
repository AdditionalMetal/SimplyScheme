;;  12.8 Write a procedure numbers that takes a sentence as its
;;       argument and returns another sentence containing only the
;;       numbers in the argument:
;; 
;; > (numbers '(76 trombones and 110 cornets))
;; (76 110)


(define (numbers sent)
  (cond ( (empty? sent)          '()         )
	( (number? (first sent)) (se (first sent) (numbers (bf sent))))
	( else                   (numbers (bf sent)))
	)
  )
