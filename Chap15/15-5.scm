;;  15.5 Suppose you have a phone number, such as 223-5766, and you'd
;;  like to figure out a clever way to spell it in letters for your
;;  friends to remember. Each digit corresponds to three possible
;;  letters. For example, the digit 2 corresponds to the letters A, B,
;;  and C. Write a procedure that takes a number as argument and
;;  returns a sentence of all the possible spellings:
;; 
;; > (phone-spell 2235766)
;; (AADJPMM AADJPMN ... CCFLSOO)
;; 
;; (We're not showing you all 2187 words in this sentence.) You may
;; assume there are no zeros or ones in the number, since those don't
;; have letters.
;; 
;; Hint: This problem has a lot in common with the subsets example.


;; (define (wordify w s)
;;   (if (empty? s)
;;       '()
;;       (se (word w (first s)) (wordify w (bf s)))))
;; 
;; (define (expand a b)
;;   (if (empty? a)
;;       '()
;;       (se (wordify (first a) b) (expand (bf a) b))
;;       )
;;   )

;; What is this called? Double recursion? Is this "corecursive"?
(define (expand a b)
  (define (wordify w x)
    (if (or (empty? w) (empty? x))
	'()
	(se (word w (first x)) (wordify w (bf x)))))
  (cond ((empty? a) '() )
	((empty? b) a   )
	(else (se (wordify (first a) b) (expand (bf a) b)))))


(define (phone-spell num)
  (cond ((empty? num) '() )
	((= 2 (first num)) (expand '(a b c)   (phone-spell (bf num)) ))
	((= 3 (first num)) (expand '(d e f)   (phone-spell (bf num)) ))
	((= 4 (first num)) (expand '(g h i)   (phone-spell (bf num)) ))
	((= 5 (first num)) (expand '(j k l)   (phone-spell (bf num)) ))
	((= 6 (first num)) (expand '(m n o)   (phone-spell (bf num)) ))
	((= 7 (first num)) (expand '(p q r s) (phone-spell (bf num)) ))
	((= 8 (first num)) (expand '(t u v)   (phone-spell (bf num)) ))
	((= 9 (first num)) (expand '(w x y z) (phone-spell (bf num)) ))
	(else (se (first num) (phone-spell (bf num)))) ;; preserves "1" and "0"
	)
  )
