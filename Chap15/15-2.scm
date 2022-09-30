;;  15.2 A "palindrome" is a sentence that reads the same backward as
;;  forward. Write a predicate palindrome? that takes a sentence as
;;  argument and decides whether it is a palindrome. For example:
;; 
;; > (palindrome? '(flee to me remote elf))
;; #T
;; 
;; > (palindrome? '(flee to me remote control))
;; #F
;; 
;; Do not reverse any words or sentences in your solution.

(define (sent-to-word sent)
  (if (empty? sent)
      ""
      (word (first sent) (sent-to-word (bf sent)))
      )
  )

(define (palindrome? sent)
  (define (ph? wd)
    (if (<= (count wd) 1)
	#t
	(and (equal? (last wd) (first wd)) (palindrome? (word (bf (bl wd)))))
	)
    )
  (ph? (sent-to-word sent))
  )
