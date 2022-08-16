;; convert american
;;  8 am -> 8
;; 12 pm -> 12
;;  2 pm -> 14
;; 12 am -> 24 (book specifies...)

(define (add12? time)
  (if (equal? (last time) 'pm)
      ;; PM Handling...
      (if (equal? (first time) 12)
	  0   ;; 12 pm is 12
	  12
	  )
      ;; AM Handling...
      (if (equal? (first time) 12)
	  12 ;; 12 am is 24
	  0
	  )
      )
  )
  
(define (european-time time)
  (+ (first time) (add12? time))
  )

(define (american-time hour)
  (if (= hour 24) '(12 am) 
      (if (= hour 12)
	  '(12 pm)
	  (if (> hour 12)
	      (se (- hour 12) 'pm)
	      (se hour 'am)
	      )
	  )
      )
  )
