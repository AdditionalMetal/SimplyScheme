;;  14.3  
;; 
;; > (remdup '(ob la di ob la da))              ;; remove duplicates
;; (OB LA DI DA)
;; 
;; (It's okay if your procedure returns (DI OB LA DA) instead, as long
;; as it removes all but one instance of each duplicated word.)

(define (remove wd sent)
  (cond ((empty? sent) sent)
	((equal? wd (first sent)) (remove wd (bf sent)))
	(else (se (first sent) (remove wd (bf sent))))
   )
  )

(define (remdup sent)  
  (if (empty? sent)
      '()
      (se (first sent) (remdup (remove (first sent) (bf sent))))
      )
  )

;; 'ob '(la di la da)
;;     'la '(di da)
;;          'di '(da)
;;              'da '()



