;; Useful list of available functions in Appendix
(define (subword wd s e)
  ( (repeated bl (- (count wd) e)) ((repeated bf (- s 1)) wd) )
  )

