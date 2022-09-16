;; 12.4  Here's the definition of a function f:
;;
;; --- Image URL:http://people.eecs.berkeley.edu/~bh/ssch12/math1.gif
;;
;; Implement f as a Scheme procedure. What does f do?

(define (f sent)
  (if (empty? sent) sent (se (f(bf sent)) (first sent) ))
  )

;; Does?
;;
;;   Given sentences, it reverse it
;;
;;   Given a word breaks it up to individual letters and then reverse
;;   that. The definition didn't limit the domain to sentences...
