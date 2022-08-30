(define (sentence-version f)
  (lambda (x) (every f x))
  )

;; stklos> (load "Chap09/9-6.scm")
;; stklos> ((sentence-version square) '(1 2 3))
;; (1 4 9)
;; stklos> (load "Chap09/9-6.scm")
;; stklos> ((sentence-version first) '(if i fell))
;; (i i f)
;; stklos> ((sentence-version square) '(8 2 4 6))
;; (64 4 16 36)
;; stklos> 
