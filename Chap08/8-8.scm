;; n -> 2n
;; good -> great
;; bad -> terrible
(define (upit wd)
  (cond ((number? wd)       (* 2 wd) )
	((equal?  wd 'good) 'great   )
	((equal?  wd 'bad)  'terrible)
	(else wd))
  )

(define (exaggerate sent)
  (every upit sent)
  )

;;------------------------------------------------------------
(define (test-exaggerate)
  (cond ((not (equal? '(i ate 6 potstickers)           (exaggerate '(i ate 3 potstickers))))       '(failed - ate 3 potstickers))
	((not (equal? '(the chow fun is great here)    (exaggerate '(the chow fun is good here)))) '(failed - chow fun is good))
	((not (equal? '(the chow fun is terrible here) (exaggerate '(the chow fun is bad here))))  '(failed - chow fun is bad))
	(else '(Passed test))
	)
  )
