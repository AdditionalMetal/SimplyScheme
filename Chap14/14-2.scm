;;  14.2  
;; 
;; > (up 'town)
;; (T TO TOW TOWN)

;; ;; Method one...
;; (define (r_up wd)
;;   (if (empty? wd) '()
;;       (se wd (r_up (bl wd)))
;;       )
;;   )
;; 
;; (define (reverse sent)
;;   (if (empty? sent) sent
;;       (se (last sent) (reverse (bl sent)))
;;       )
;;   )
;; 
;; (define (up wd)
;;   (reverse (r_up wd))
;;   )

;; Method two
(define (up wd)
  (if (empty? wd) '()
      (se (up (bl wd)) wd)
      )
  )
