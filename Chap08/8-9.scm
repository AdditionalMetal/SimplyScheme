;; I cheated on this one by looking at buntime's solutions...

;; every works on each word, so can just return the word...
(every word '(sample sentence))

;; keep uses predicates to keep items - procedure that always returns true...
(define (always-true d) #t) ;; needs argument to work as procedure
(keep always-true '(sample sentence))

;; accumulate uses each word of sentence to a procedure - so just turn back into sentence...
(accumulate sentence '(sample sentence is here))

;; (sentence 'sample (sentence 'sentence (sentence 'is 'here)))
;; or is it?
;; (sentence (sentence (sentence 'sample 'sentence) 'is) here)
