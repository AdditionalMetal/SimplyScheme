;; 15.4 Write a predicate procedure substring? that takes two words as
;; arguments and returns #t if and only if the first word is a
;; substring of the second. (See Exercise 15.3 for the definition of a
;; substring.)
;; 
;; Be careful about cases in which you encounter a "false start," like this:
;; 
;; > (substring? 'ssip 'mississippi)
;; #T
;; 
;; and also about subsets that don't appear as consecutive letters in the second word:
;; 
;; > (substring? 'misip 'mississippi)
;; #F


;;(load "Chap15/15-3.scm")
(define (substrings wd)
  (define (shorten w)
    (if (empty? w) '()
	(se w (shorten (bl w)))))
  (if (empty? wd) '()
      (se (shorten wd) (substrings (bf wd)))))

(define (substring? fragment targetword)
  (member? fragment (substrings targetword))
  )
