;;  14.8 Write expand, which takes a sentence as its argument. It
;;  returns a sentence similar to the argument, except that if a
;;  number appears in the argument, then the return value contains
;;  that many copies of the following word:
;; 
;; > (expand '(4 calling birds 3 french hens))
;; (CALLING CALLING CALLING CALLING BIRDS FRENCH FRENCH FRENCH HENS)
;; 
;; > (expand '(the 7 samurai))
;; (THE SAMURAI SAMURAI SAMURAI SAMURAI SAMURAI SAMURAI SAMURAI)

(define (expand sent)
  (cond ( (< (count sent) 2) sent)
	( (number? (first sent)) (se (rep (first sent) (first (bf sent)))
				     (expand (bf (bf sent)))))
	( else (se (first sent) (expand (bf sent))))
      )
  )

(define (rep num val)
  (if (= 0 num)
      '()
      (se val (rep (- num 1) val))
      )
  )
