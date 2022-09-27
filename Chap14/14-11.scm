;;  14.11 Write the procedure remove-adjacent-duplicates that takes a
;;  sentence as argument and returns the same sentence but with any
;;  word that's immediately followed by the same word removed:
;; 
;; > (remove-adjacent-duplicates '(y a b b a d a b b a d o o))
;; (Y A B A D A B A D O)
;; 
;; > (remove-adjacent-duplicates '(yeah yeah yeah))
;; (YEAH)


;; don't need helper
(define (remove-adjacent-duplicates sent)
  (cond ((< (count sent) 2) sent)
	((equal? (first sent) (first (bf sent))) (remove-adjacent-duplicates (bf sent)))
	(else (se (first sent) (remove-adjacent-duplicates (bf sent))))
	)
  )
