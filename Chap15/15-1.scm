;; 15.1  Write a procedure to-binary:
;; 
;; > (to-binary 9)
;; 1001
;; 
;; > (to-binary 23)
;; 10111

;; Algorithm - "Divide by 2"
;;  Prepend remainder to word until quotient is zero...
;;
;; e.g. 16
;;  q 8 r 0 -> 0
;;  q 4 r 0 -> 00
;;  q 2 r 0 -> 000
;;  q 1 r 0 -> 0000
;;  q 0 r 1 -> 10000
;;    ^
;;    Stop here

(define (to-binary num)
  (if (= 0 (quotient num 2))
      (remainder num 2)
      (word (to-binary (quotient num 2)) (remainder num 2))
      )
  )
