;; 14.12 Write a procedure progressive-squares? that takes a sentence
;; of numbers as its argument. It should return #t if each number
;; (other than the first) is the square of the number before it:
;; 
;; > (progressive-squares? '(3 9 81 6561))
;; #T
;; 
;; > (progressive-squares? '(25 36 49 64))
;; #F

(define (progressive-squares? nums)
  (cond ((< (count nums) 2) #t)
	((equal? (square (first nums)) (first (bf nums))) (progressive-squares? (bf nums)))
	(else #f)
	)
  )
