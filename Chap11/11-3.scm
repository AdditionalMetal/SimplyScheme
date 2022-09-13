;; 11.3 [8.13] Write a procedure phone-unspell that takes a spelled
;; version of a phone number, such as POPCORN, and returns the real
;; phone number, in this case 7672676. You will need a helper
;; procedure that translates a single letter into a digit:

(define (unspell-letter letter)
  (cond ((member? letter 'abc) 2)
	((member? letter 'def) 3)
	((member? letter 'ghi) 4)
	((member? letter 'jkl) 5)
	((member? letter 'mno) 6)
	((member? letter 'prs) 7)
	((member? letter 'tuv) 8)
	((member? letter 'wxy) 9)
	(else 0)))

(define (phone-unspell wd)
  (if (empty? wd)
      wd
      (word (unspell-letter (first wd)) (phone-unspell (bf wd)))
      )
  )
