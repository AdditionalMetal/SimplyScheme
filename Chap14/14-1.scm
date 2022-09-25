;; 14.1  
;; 
;; > (remove-once 'morning '(good morning good morning))
;; (GOOD GOOD MORNING)
;; 
;; (It's okay if your solution removes the other MORNING instead, as
;; long as it removes only one of them.)

;; First version...
;; (define (remove-once wd sent)
;;   ;; not dealing with empty wd, though I probably should...
;;   (if (empty? sent)
;;       sent
;;       (if (equal? wd (first sent))
;; 	  (se (bf sent))
;; 	  (se (first sent) (remove-once wd (bf sent)))
;; 	  )
;;       )
;;   )

(define (remove-once wd sent)
  (cond ((empty? sent) sent)
	((equal? wd (first sent)) (bf sent))
	(else (se (first sent) (remove-once wd (bf sent))))
	)
  )
