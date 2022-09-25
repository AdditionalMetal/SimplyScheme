;;  14.5 [8.7] Write a procedure letter-count that takes a sentence as
;;  its argument and returns the total number of letters in the
;;  sentence:
;;
;; > (letter-count '(fixing a hole))
;; 11

(define (letter-count sent)
  (if (empty? sent)
      0
      (+ (count (first sent)) (letter-count (bf sent)))
      )
  )
