;;  11.7 Write a procedure copies that takes a number and a word as
;;  arguments and returns a sentence containing that many copies of
;;  the given word:
;; 
;; > (copies 8 'spam)
;; (SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM)
(define (copies num wd)
  (if (<= num 0)
      '()
      (se wd (copies (- num 1)  wd))
      )
  )
