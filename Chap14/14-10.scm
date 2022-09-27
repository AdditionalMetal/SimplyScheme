;;  14.10 Write the procedure count-adjacent-duplicates that takes a
;;  sentence as an argument and returns the number of words in the
;;  sentence that are immediately followed by the same word:
;; 
;; > (count-adjacent-duplicates '(y a b b a d a b b a d o o))
;; 3
;; 
;; > (count-adjacent-duplicates '(yeah yeah yeah))
;; 2

;; Discovered that you can define helpers inside of other definitions,
;; which I believe limits scope...
(define (count-adjacent-duplicates sent)
  (define (c-a-d-helper n s)
    (if (<= (count s) 1)
	n
	(if (equal? (first s) (first (bf s)))
	    (c-a-d-helper (+ n 1) (bf s))
	    (c-a-d-helper n (bf s))
	    )
	)
    )
  (c-a-d-helper 0 sent)
  )
