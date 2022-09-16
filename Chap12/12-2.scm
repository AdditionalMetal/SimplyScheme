;;  12.2  Fix the bug in the following definition:
;; 
;; (define (acronym sent)                       ;; wrong
;;   (if (= (count sent) 1)
;;       (first sent)
;;       (word (first (first sent))
;; 	    (acronym (bf sent)))))

(define (acronym sent)
  (if (empty? sent)
      ""
      (word (first (first sent)) (acronym (bf sent)))))
