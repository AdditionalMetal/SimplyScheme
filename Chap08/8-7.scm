(define (letter-count sent)
  (accumulate + (every count sent))
  )

;;------------------------------------------------------------
(define (test-letter-count)
  (cond ((not (equal? 11 (letter-count '(fixing a hole)))) '(failed - fixing a hole))
	(else '(Passed test))
	)
  )
