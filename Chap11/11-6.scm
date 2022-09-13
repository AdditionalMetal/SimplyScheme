;; 11.6 Write a procedure countdown that works like this:
;; 
;; > (countdown 10)
;; (10 9 8 7 6 5 4 3 2 1 BLASTOFF!)
;; 
;; > (countdown 3)
;; (3 2 1 BLASTOFF!)
(define (countdown count)
  (if (<= count 0)
      '(BLASTOFF!)
      (se count (countdown (- count 1)))
      )
  )
