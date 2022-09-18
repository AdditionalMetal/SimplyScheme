;;  12.12 Write a procedure arabic which converts Roman numerals into
;;        Arabic numerals:
;; 
;; > (arabic 'MCMLXXI)
;; 1971
;; 
;; > (arabic 'MLXVI)
;; 1066
;; 
;; You will probably find the roman-value procedure from Chapter 6
;; helpful. Don't forget that a letter can reduce the overall value if
;; the letter that comes after it has a larger value, such as the C in
;; MCM.

(define (roman-value letter)
  (cond ((equal? letter 'I) 1)
        ((equal? letter 'V) 5)
        ((equal? letter 'X) 10)
        ((equal? letter 'L) 50)
        ((equal? letter 'C) 100)
        ((equal? letter 'D) 500)
        ((equal? letter 'M) 1000)
        (else 0)))

(define (arabic val)
  (if (empty? val)
      0
      (if (>= (count val) 2)
	  (if (< (roman-value (first val)) (roman-value (item 2 val)))
	      (- (arabic (bf val)) (roman-value (first val)))
	      (+ (roman-value (first val)) (arabic (bf val)))
	      )
	  (+ (roman-value (first val)) (arabic (bf val)))
	  )
      )
  )
