(define (um? wd) (equal? wd 'um))

(define (count-ums sent)
  (count (keep um? sent))
  )
