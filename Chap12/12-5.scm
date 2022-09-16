;; 12.5 [8.8] Write an exaggerate procedure which exaggerates
;;            sentences:
;; 
;; > (exaggerate '(i ate 3 potstickers))
;; (I ATE 6 POTSTICKERS)
;; 
;; > (exaggerate '(the chow fun is good here))
;; (THE CHOW FUN IS GREAT HERE)
;; 
;; It should double all the numbers in the sentence, and it should
;; replace "good" with "great," "bad" with "terrible," and anything
;; else you can think of.

;; Reference implementation from 8.8 using h.o.f.
;; ;; n -> 2n
;; ;; good -> great
;; ;; bad -> terrible
(define (upit wd)
  (cond ((number? wd)       (* 2 wd) )
	((equal?  wd 'good) 'great   )
	((equal?  wd 'bad)  'terrible)
	(else wd))
  )
;; 
;; (define (exaggerate sent)
;;   (every upit sent)
;;   )

(define (exaggerate sent)
  (if (empty? sent)
      sent
      (se (upit (first sent)) (exaggerate (bf sent)))
      )
  )

;;------------------------------------------------------------
(define (test-exaggerate)
  (cond ((not (equal? '(i ate 6 potstickers)           (exaggerate '(i ate 3 potstickers))))       '(failed - ate 3 potstickers))
	((not (equal? '(the chow fun is great here)    (exaggerate '(the chow fun is good here)))) '(failed - chow fun is good))
	((not (equal? '(the chow fun is terrible here) (exaggerate '(the chow fun is bad here))))  '(failed - chow fun is bad))
	(else '(Passed test))
	)
  )
