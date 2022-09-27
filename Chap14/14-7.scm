;;  14.7 Write differences, which takes a sentence of numbers as its
;;  argument and returns a sentence containing the differences between
;;  adjacent elements. (The length of the returned sentence is one
;;  less than that of the argument.)
;; 
;; > (differences '(4 23 9 87 6 12))
;; (19 -14 78 -81 6)

;; Question's difference order is reverse of what I would have expected...
(define (differences sent)
  (if (< (count sent) 2)
      '()
      (se (- (first (bf sent)) (first sent)) (differences (bf sent)))
      )
  )
