;;  12.6 [8.11] Write a GPA procedure. It should take a sentence of
;;  grades as its argument and return the corresponding grade point
;;  average:
;; 
;; > (gpa '(A A+ B+ B))
;; 3.67
;; 
;; Hint: write a helper procedure base-grade that takes a grade as
;; argument and returns 0, 1, 2, 3, or 4, and another helper procedure
;; grade-modifier that returns −.33, 0, or .33, depending on whether
;; the grade has a minus, a plus, or neither.


;; 8-8 Implementation
(define (base-grade wd)
  (cond ((member? 'A wd) '4)
	((member? 'B wd) '3)
	((member? 'C wd) '2)
	((member? 'D wd) '1)
	(else            '0)
	)
  )

(define (grade-modifier wd)
  (cond ((member? '+ wd) '+0.33)
	((member? '- wd) '-0.33)
	(else            '0    )
	)
  )

;; (define (gpa grades)
;;   ( / (+ (accumulate + (every base-grade    grades))
;; 	 (accumulate + (every grade-modifier grades)))
;;       (count grades)
;;       )
;;   )

(define (gpa-accumulate grades)
  (if (empty? grades) 0
      (+ (gpa-accumulate (bf grades))
	 (+ (base-grade (first grades)) (grade-modifier (first grades)))
	 )
      )
  )
  
(define (gpa grades)
  (/ (gpa-accumulate grades) (count grades))
  )
