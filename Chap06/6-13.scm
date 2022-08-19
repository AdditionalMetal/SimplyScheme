(define (remove-suffix name) (if (member? (last  name) '(jr iii iv)) (bl name) name))
(define (last-name name) (last (remove-suffix name)))

(define (doctor? name)            (or (equal? 'dr     (first name)) (equal? 'doctor (first name))))
(define (royalty? name)           (member? (first name) '(king queen prince princess duke duchess count countess)))
(define (david-livingstone? name) (and (equal? 'david (first name)) (equal? 'livingstone (last name)) ))

(define (greet name)
  (cond ((david-livingstone? name) '(dr livingstone i presume?))
	((royalty? name)           '(hello your majesty))
	((doctor? name)            (se '(hello dr)  (last-name name)))
	(else                      (se  'hello      (first     name))))
  )

;;------------------------------------------------------------
(define (test-greet)
  (cond ((not (equal? '(hello john)                (greet '(john lennon))))              '(failed john lennon))
	((not (equal? '(hello dr curie)            (greet '(dr marie curie))))           '(failed dr marie curie))
	((not (equal? '(hello dr king)             (greet '(dr martin luther king jr)))) '(failed dr martin luther king jr))
	((not (equal? '(hello your majesty)        (greet '(queen elizabeth))))          '(failed queen elizabeth))
	((not (equal? '(dr livingstone i presume?) (greet '(david livingstone))))        '(failed david livingstone))
	(else '(Passed all tests - fingers crossed that this was enough))))
