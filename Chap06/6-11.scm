(define (leap-year? year)
  (cond ((= 0 (modulo year 400)) #t)
	((= 0 (modulo year 100)) #f)
	((= 0 (modulo year   4)) #t)
	(else #f)
	)
  )
	

(define (valid-date? m d y)
  (if (> d 0)
      (cond ((member? m '(1 3 5 7 8 10  12)) (<= d 31))
	    ((member? m '(   4 6   9  11  )) (<= d 30))
	    ;;             2                 
	    (     (leap-year? y)             (<= d 29))
	    ((not (leap-year? y))            (<= d 28))
	    (else #f)
	    )
      #f
      )
)
