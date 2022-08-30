(define (my-appearances a b)
  (count (keep (lambda (x)(equal? a x)) b))
  )

;; Tried using member? but that fails with the whole
;; letter/word/sentence transistions ... types are frustrating...
;;
;; Looked at simply.scm to see they are using equal? Which avoids this
;; issue...
