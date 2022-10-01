;;  15.6 Let's say a gladiator kills a roach. If we want to talk about
;;  the roach, we say "the roach the gladiator killed." But if we want
;;  to talk about the gladiator, we say "the gladiator that killed the
;;  roach."
;; 
;; People are pretty good at understanding even rather long sentences
;; as long as they're straightforward: "This is the farmer who kept
;; the cock that waked the priest that married the man that kissed the
;; maiden that milked the cow that tossed the dog that worried the cat
;; that killed the rat that ate the malt that lay in the house that
;; Jack built." But even a short nested sentence is confusing: "This
;; is the rat the cat the dog worried killed." Which rat was that?
;; 
;; Write a procedure unscramble that takes a nested sentence as
;; argument and returns a straightforward sentence about the same cast
;; of characters:
;; 
;; > (unscramble '(this is the roach the gladiator killed))
;; (THIS IS THE GLADIATOR THAT KILLED THE ROACH)
;; 
;; > (unscramble '(this is the rat the cat the dog the boy the
;;                      girl saw owned chased bit))
;; (THIS IS THE GIRL THAT SAW THE BOY THAT OWNED THE DOG THAT
;;       CHASED THE CAT THAT BIT THE RAT)
;; 
;; You may assume that the argument has exactly the structure of these
;; examples, with no special cases like "that lay in the house" or
;; "that Jack built."

;; Unlike most of the book, this problem had little explaination and I
;; had no idea on how to interpret the question.
;;
;; Here is my best guess...
;;  verbs are at end of sentence following last noun
;;  nouns/subjects are of the form  "the ..."
;;
;;  object noun_a noun_b noun_c noun_d ... verb_d verb_c verb_b verb_a
;;  rat  cat    dog    boy    girl       saw    owned  chased bit
;;  --> noun_d that verb_d noun_c verb_c noun_b verb_b noun_a verb_a object
;;

;; "assemble" which breaks it down to nouns/verbs and constructs the final sentence
(define (nouns sent) ;; HOF something like "keep noun? sent"
  (cond ( (<= (count sent) 1)  '())
	( (equal? (first sent) 'the) (se (first (bf sent)) (nouns (bf sent))))
	(else  (nouns (bf sent)))
      )
  )

(define (verbs sent)
  (define (n-verbs n sent)
    (if (<= n 1) '() (se (last sent) (n-verbs (- n 1) (bl sent)))))
  (n-verbs (count (nouns sent)) sent))

(define (assemble sent)
  (define (pairs n v)
    (if (empty? v) '() (se 'the (last n) 'that (last v) (pairs (bl n) (bl v))))
    )
  (se '(this is) (pairs (bf (nouns sent)) (verbs sent)) 'the (first (nouns sent)))
  )

;; unscramle that does the same thing in place...
(define (unscramble sent)
  (cond ( (<= (count sent) 1)  '())
	;; object -> '(this is) _nouns__verbs_ '(the object)
	( (equal? (first sent) 'this) (se '(this is)
					  (unscramble (bf (bf (bf (bf sent)))))
					  'the (item 4 sent)))
	;; 'the noun_n 'that verb_n
	( (equal? (first sent) 'the)  (se (unscramble (bf (bl sent)))
					  'the  (first (bf sent))
					  'that (last sent)))

	(else  (unscramble (bf sent)))
	)
  )
