;; 14.13 What does the pigl procedure from Chapter 11 do if you invoke
;; it with a word like "frzzmlpt" that has no vowels? Fix it so that
;; it returns "frzzmlptay."

;; (define (pigl wd)
;;   (if (member? (first wd) 'aeiou)
;;       (word wd 'ay)
;;       (pigl (word (bf wd) (first wd)))))

(define (pigl wd)
  (define (pigl-helper n wd)
    (if (= n (count wd))
	(word wd 'ay)
	(if (member? (first wd) 'aeiou)
	    (word wd 'ay)
	    (pigl-helper (+ n 1)(word (bf wd) (first wd))))
	)
    )
  (pigl-helper 0 wd)
  )
