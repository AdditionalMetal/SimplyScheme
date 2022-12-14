;;  9.11 Write a procedure unabbrev that takes two sentences as
;;  arguments. It should return a sentence that's the same as the
;;  first sentence, except that any numbers in the original sentence
;;  should be replaced with words from the second sentence. A number 2
;;  in the first sentence should be replaced with the second word of
;;  the second sentence, a 6 with the sixth word, and so on.

;; > (unabbrev '(john 1 wayne fred 4) '(bill hank kermit joey))
;; (JOHN BILL WAYNE FRED JOEY)

;; > (unabbrev '(i 3 4 tell 2) '(do you want to know a secret?))
;; (I WANT TO TELL YOU)

(define (unabbrev input dictionary)
  (every (lambda (in)(if (number? in)
			 (item in dictionary)
			 in)) input)
  )

;; stklos> (load "Chap09/9-11.scm")
;; stklos> (unabbrev '(john 1 wayne fred 4) '(bill hank kermit joey))
;; (john bill wayne fred joey)
;; stklos>  (unabbrev '(i 3 4 tell 2) '(do you want to know a secret?))
;; (i want to tell you)
;; stklos> 
