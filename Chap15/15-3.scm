;; 15.3 Write a procedure substrings that takes a word as its
;; argument. It should return a sentence containing all of the
;; substrings of the argument. A substring is a subset whose letters
;; come consecutively in the original word. For example, the word bat
;; is a subset, but not a substring, of brat.


;; e.g.
;; ab   -> a b
;; abc  -> a ab abc b bc c
;; abcd -> a ab abc abcd b bc bcd c cd d
;;      -> abcd abc ab a bcd bc b cd c d <- better order for me...

(define (substrings wd)
  (define (shorten w)
    (if (empty? w)
	'()
	(se w (shorten (bl w)))
	)
    )
  (if (empty? wd)
      '()
      (se (shorten wd) (substrings (bf wd)))
      )
  )


