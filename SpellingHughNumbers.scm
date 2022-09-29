;; Write a procedure number-name that takes a positive integer
;; argument and returns a sentence containing that number spelled out
;; in words:
;; 
;; > (number-name 5513345)
;; (FIVE MILLION FIVE HUNDRED THIRTEEN THOUSAND THREE HUNDRED FORTY FIVE)
;; 
;; > (number-name (factorial 20))
;; (TWO QUINTILLION FOUR HUNDRED THIRTY TWO QUADRILLION NINE HUNDRED TWO
;;  TRILLION EIGHT BILLION ONE HUNDRED SEVENTY SIX MILLION SIX HUNDRED
;;  FORTY THOUSAND)
;; 
;; There are some special cases you will need to consider:
;; 
;; • Numbers in which some particular digit is zero
;; • Numbers like 1,000,529 in which an entire group of three digits
;;   is zero.
;; • Numbers in the teens.
;; 
;; Here are two hints. First, split the number into groups of three
;; digits, going from right to left. Also, use the sentence
;; 
;; '(thousand million billion trillion quadrillion quintillion
;;   sextillion septillion octillion nonillion decillion)
;; 
;; You can write this bottom-up or top-down. To work bottom-up, pick a
;; subtask and get that working before you tackle the overall
;; structure of the problem. For example, write a procedure that
;; returns the word FIFTEEN given the argument 15.
;; 
;; To work top-down, start by writing number-name, freely assuming the
;; existence of whatever helper procedures you like. You can begin
;; debugging by writing stub procedures that fit into the overall
;; program but don't really do their job correctly. For example, as an
;; intermediate stage you might end up with a program that works like
;; this:
;; 
;; > (number-name 1428425)                      ;; intermediate version
;; (1 MILLION 428 THOUSAND 425)
;; (define (number-name num))
;; 
;; (define (find-three-digits wd) )
;; (define (read-three-digits wd) );; assuming 000 to 999 is given

(define LowDigitNames   '(nineteen eighteen seventeen sixteen fifteen fourteen thirteen twelve eleven ten nine eight seven six five four three two one))
(define TwoDigitNames   '(ninety eighty seventy sixty fifty fourty thirty twenty ERROR))
(define ThreeDigitNames '(decillion nonillion octillion septillion sextillion quintillion quadrillion trillion billion million thousand END ))

(define (read-three-digits n)
  (define (roh n s)
    (cond (( = n    0 ) '())
	  (( = n    1 ) (last s))
	  ((>= n  100 ) (se (roh (quotient n 100 ) LowDigitNames        ) 'hundred (read-three-digits (remainder n 100))))
	  ((>= n   20 ) (se (roh (quotient n 10  ) TwoDigitNames        )          (roh               (remainder n 10) LowDigitNames)))
	  (else (roh (- n 1) (bl s)))))
  (roh n LowDigitNames))


(define (number-name n)
  (define (rhp n s)
    (cond ((= n    0) '())
	  ((< n 1000) (se (read-three-digits n) (if (equal? 'END (last s)) '() (last s))))
	  (else       (se (rhp (quotient n 1000) (bl s)) (rhp (remainder n 1000) s)))
	  )
    )
  (rhp n ThreeDigitNames)
  )

  
