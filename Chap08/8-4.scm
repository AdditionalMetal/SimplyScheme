(define (ends-vowel? wd) (member? (last wd) 'aeiou))
(define (even-count? wd) (even? (count wd)))

(define (choose-beatle p)
  (keep p '(John Paul George Ringo))
  )

;;----------------------------------------------------------
(define (test-choose-beatle)
  (cond ((not (equal? '(George Ringo)     (choose-beatle ends-vowel?))) '(failed - ends-vowel))
	((not (equal? '(John Paul George) (choose-beatle even-count?))) '(failed - even-count))
	(else '(Passed all tests - not sure if there were any...))
	)
  )
