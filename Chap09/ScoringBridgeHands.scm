(define (card-val card)
  (cond	((equal? (bf card) 'a) 4)
	((equal? (bf card) 'k) 3)
	((equal? (bf card) 'q) 2)
	((equal? (bf card) 'j) 1)
	(else 0)
	)
  )

(define (high-card-points cards)
  (accumulate + (every (lambda(c)(card-val c)) cards))
  )

(define (count-suit suit cards)
  (count (keep (lambda(x)(equal? suit (first x))) cards))
  )

(define suits '(s h c d))   ;; Spades, Hearts, Clubs, Diamonds
(define (suit-counts cards)
  (every (lambda(s)(count-suit s cards)) suits)
  )

(define (suit-dist-points card_count)
  (cond ((equal? card_count 0) 3)
	((equal? card_count 1) 2)
	((equal? card_count 2) 1)
	(else 0)
	)
  )

(define (hand-dist-points cards)
  (accumulate + (every suit-dist-points (suit-counts cards)))
  )

(define (bridge-val cards)
  (+ (high-card-points cards) (hand-dist-points cards))
  )
