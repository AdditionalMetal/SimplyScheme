;; 14.6  Write member?.
(define (member2? wd sent)
  (if (empty? sent)
      #f
      (or (equal? wd (first sent)) (member2? wd (bf sent)))
      )
  )
