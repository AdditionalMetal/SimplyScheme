;;  14.9 Write a procedure called location that takes two arguments, a
;;  word and a sentence. It should return a number indicating where in
;;  the sentence that word can be found. If the word isn't in the
;;  sentence, return #f. If the word appears more than once, return
;;  the location of the first appearance.
;; 
;; > (location 'me '(you never give me your money))
;; 4

;; Using explicit helper
(define (l_help num wd sent)
  (cond ((empty? sent) #f)
	((equal? wd (first sent)) num)
	(else (l_help (+ 1 num) wd (bf sent)))
      )
  )

(define (location wd sent)
  (l_help 1 wd sent)
  )


;; ;; non-working lambda version
;; (define (location wd sent)
;;   ((lambda (n w s)
;;      (cond ((empty? s) #f)
;; 	   ((equal? w (first s)) n)
;; 	   (else (l_help (+ 1 n) w (bf s))) ;; how to call l_help???
;; 	   )) 1 wd sent)
;;     )
