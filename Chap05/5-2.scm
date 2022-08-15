;; 5.2

;; (f1 ’(a b c) ’(d e f))
;; (B C D E)
(define (f1 s e) (bl (bf (sentence s e))))

;; (f2 ’(a b c) ’(d e f))
;; (B C D E AF)
(define (f2 s e)
  (se
   (bf (bl (se s e)))
   (word (first s) (last e))
   )
  )

;; (f3 ’(a b c) ’(d e f))
;; (A B C A B C)
(define (f3 s e) (sentence s s))

;; (f4 ’(a b c) ’(d e f))
;; BE
(define (f4 s e) (word (item 2 s) (item 2 e)))

