;;  14.15 Write merge, a procedure that takes two sentences of numbers
;;  as arguments. Each sentence must consist of numbers in increasing
;;  order. Merge should return a single sentence containing all of the
;;  numbers, in order. (We'll use this in the next chapter as part of
;;  a sorting algorithm.)
;; 
;; > (merge '(4 7 18 40 99) '(3 6 9 12 24 36 50))
;; (3 4 6 7 9 12 18 24 36 40 50 99)


(define (merge first-sent second-sent)
  (define (merge-help cs fs ss)
    (if (or (empty? fs) (empty? ss))
	(se cs fs ss)
	(if (<= (first fs) (first ss))
	    (merge-help (se cs (first fs)) (bf fs) ss)
	    (merge-help (se cs (first ss)) fs (bf ss))
	    )
	)
    )
  (merge-help '() first-sent second-sent)
  )
