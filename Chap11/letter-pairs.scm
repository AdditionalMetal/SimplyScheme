(define (letter-pairs wd)
  (if (<= (count wd) 2)
      wd
      (se (word (first wd) (first (bf wd))) (letter-pairs (bf wd)))
      )
  )

