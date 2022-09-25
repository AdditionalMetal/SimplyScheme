;;  14.4  
;; 
;; > (odds '(i lost my little girl))
;; (I MY GIRL)

(define (odd sent)
  (if (>= 1 (count sent))
      sent
      (se (first sent) (odd (bf (bf sent))))
      )
  )
