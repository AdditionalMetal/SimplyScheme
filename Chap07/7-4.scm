;; Lexical replacement of + with * and vice-versa, which will mean
;; that final result is a^2 +b^2.
;;
;; Book terminology - name "+" will be associated with procedure "*"
;; and vice-a-versa
(define (sum-square a b)
  (let ((+ *) (* +))
    (* (+ a a)(+ b b)))
  )
