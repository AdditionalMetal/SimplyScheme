(define (letterwords l sent)
  (keep (lambda (x)(member? l x)) sent)
  )

;; stklos> (load "Chap09/9-7.scm")
;; stklos> (letterwords 'o '(got to get you into my life))
;; (got to you into)
