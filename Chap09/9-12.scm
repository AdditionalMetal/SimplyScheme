;;  9.12 Write a procedure first-last whose argument will be a
;;  sentence. It should return a sentence containing only those words
;;  in the argument sentence whose first and last letters are the
;;  same:

;; > (first-last '(california ohio nebraska alabama alaska massachusetts))
;; (OHIO ALABAMA ALASKA)

(define (first-last input)
  (keep (lambda(x)(equal? (first x) (last x))) input)
  )
