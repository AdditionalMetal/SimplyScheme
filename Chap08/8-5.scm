(define (amazify name)(word 'the-amazing- name))

(define (transform-beatles p)
  (every p '(John Paul George Ringo))
  )

;;----------------------------------------------------------
(define (test-transform-beatles)
  (cond ((not (equal? '(the-amazing-John the-amazing-Paul the-amazing-George the-amazing-Ringo)
		      (transform-beatles amazify))) '(failed - amazify))
	((not (equal? '(ohn aul eorge ingo) (transform-beatles bf))) '(failed - amazify))
	(else '(Passed test...))
	)
  )
