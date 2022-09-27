;;  14.16 Write a procedure syllables that takes a word as its
;;  argument and returns the number of syllables in the word, counted
;;  according to the following rule: the number of syllables is the
;;  number of vowels, except that a group of consecutive vowels counts
;;  as one. For example, in the word "soaring," the group "oa"
;;  represents one syllable and the vowel "i" represents a second one.
;; 
;; Be sure to choose test cases that expose likely failures of your
;; procedure. For example, what if the word ends with a vowel? What if
;; it ends with two vowels in a row? What if it has more than two
;; consecutive vowels?

(define (vowel? x) (and (not (empty? x)) (member? x '(a e i o u))))

(define (syllables wd)
  (define (syl-help l wd)
    (cond ((empty? wd) 0)
	  ((and (not (vowel? l)) (vowel? (first wd))) (+ 1 (syl-help (first wd) (bf wd))))
	  (else (syl-help (first wd) (bf wd))))
    )
  (syl-help '() wd)
  )

