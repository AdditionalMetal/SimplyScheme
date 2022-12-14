;; 12.1 Here is a definition of a procedure that returns the sum of
;; the numbers in its argument sentence:
;; 
;; (define (addup nums)
;;   (if (empty? (bf nums))
;;       (first nums)
;;       (+ (first nums) (addup (bf nums)))))
;; 
;; Although this works, it could be simplified by changing the base
;; case. Do that.

(define (addup nums)
  (if (empty? nums)
      0
      (+ (first nums) (addup (bf nums))))
  )
      
