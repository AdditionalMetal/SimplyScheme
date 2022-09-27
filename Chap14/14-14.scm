;;  14.14 Write a predicate same-shape? that takes two sentences as
;;  arguments. It should return #t if two conditions are met: The two
;;  sentences must have the same number of words, and each word of the
;;  first sentence must have the same number of letters as the word in
;;  the corresponding position in the second sentence.
;; 
;; > (same-shape? '(the fool on the hill) '(you like me too much))
;; #T
;; 
;; > (same-shape? '(the fool on the hill) '(and your bird can sing))
;; #F

(define (same-shape? first-sent second-sent)
  (cond ((and (empty? first-sent) (empty? second-sent)) #t)
	((or  (empty? first-sent) (empty? second-sent)) #f)
	((= (count (first first-sent)) (count (first second-sent)))
	 (same-shape? (bf first-sent) (bf second-sent)))
	(else  #f)
	)
  )
