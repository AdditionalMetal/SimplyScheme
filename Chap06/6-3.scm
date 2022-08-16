(define (sign-org number)
  (if (< number 0) 'negative
      (if (= number 0)
	  'zero
	  'positive)))

(define (sign number)
  (cond ((< number 0) 'negative)
	((= number 0) 'zero)
	((> number 0) 'positive)
	)
  )
