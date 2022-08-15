;; Temperature Conversions

(define (FtoC F)
  (* (/ 5 9) (- F 32))
  )

(define (CtoF C)
  (+ (* (/ 9 5) C) 32)
  )

