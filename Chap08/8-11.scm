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

(define (gpa grades)
  ( / (+ (accumulate + (every base-grade    grades))
	 (accumulate + (every grade-modifier grades)))
      (count grades)
      )
  )
  
