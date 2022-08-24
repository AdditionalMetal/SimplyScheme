;; painful to come up with right approach
;;  approaches usng accumulate seem to be run into number/string issues...
;;  so could make work with word/sentences or numbers but not both
;;
;; clue was question 8-9... don't take break when doing exercises!
(define (true-for-all? pred vals)
  (equal? vals (keep pred vals))
  )


