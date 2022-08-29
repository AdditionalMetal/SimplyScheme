;; Goal: (prepend-every 's '(he aid he aid)
;;       --> (she said she said)

(define (prepend pre) (lambda(root)(word pre root))) ;; returns procedure
(define (prepend-every pre roots)
  (every (prepend pre) roots)
  )

;; stklos> (load "Chap09/9-5.scm")
;; stklos> (prepend-every 'anti '(dote pasto gone body))
;; (antidote antipasto antigone antibody)
;; stklos> (prepend-every 's '(he aid he aid))
;; (she said she said)
;; stklos> 

