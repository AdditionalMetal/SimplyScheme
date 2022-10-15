;; The idea of this project is to invent a procedure poker-value that
;; works like this:
;; 
;; > (poker-value '(h4 s4 c6 s6 c4))
;; (FULL HOUSE - FOURS OVER SIXES)
;; 
;; > (poker-value '(h7 s3 c5 c4 d6))
;; (SEVEN-HIGH STRAIGHT)
;; 
;; > (poker-value '(dq d10 dj da dk))
;; (ROYAL FLUSH - DIAMONDS)
;; 
;; > (poker-value '(da d6 d3 c9 h6))
;; (PAIR OF SIXES)
;; 
;; As you can see, we are representing cards and hands just as in the
;; Bridge project, except that poker hands have only five cards.[1]
;; 
;; Here are the various kinds of poker hands, in decreasing order of
;; value:
;; 
;; * Royal flush: ten, jack, queen, king, and ace, all of the same suit
;; * Straight flush: five cards of sequential rank, all of the same suit
;; * Four of a kind: four cards of the same rank
;; * Full house: three cards of the same rank, and two of a second rank
;; * Flush: five cards of the same suit, not sequential rank
;; * Straight: five cards of sequential rank, not all of the same suit
;; * Three of a kind: three cards of the same rank, no other matches
;; * Two pair: two pairs of cards, of two different ranks
;; * Pair: two cards of the same rank, no other matches
;; * Nothing: none of the above

;; possible cards...
;; sa sk sq sj s10 s9 s8 s7 s6 s5 s4 s3 s2
;; ha hk hq hj h10 h9 h8 h7 h6 h5 h4 h3 h2
;; da dk dq dj d10 d9 d8 d7 d6 d5 d4 d3 d2
;; ca ck cq cj c10 c9 c8 c7 c6 c5 c4 c3 c2

(define (poker-value hand)
  (cond ((royal-flush?     hand) '(Not Yet Implemented))
	((straight-flush?  hand) '(Not Yet Implemented))
	((four-of-a-kind?  hand) '(Not Yet Implemented))
	((full-house?      hand) '(Not Yet Implemented))
	((flush?           hand) '(Not Yet Implemented))
	((straight?        hand) '(Not Yet Implemented))
	((three-of-a-kind? hand) '(Not Yet Implemented))
	((two-pairs?       hand) '(Not Yet Implemented))
	((one-pair?        hand) '(Not Yet Implemented)) ;; pair? is already defined...
	(else                    (se '(high card:) (highest-card hand)))
	)
  )

(define (first-card   hand)(first     (sort-rank hand)))
(define (second-card  hand)(first (bf (sort-rank hand))))
(define (rest-of-hand hand)(       bf (sort-rank hand)))

(define (three-of-a-kind? hand)
  (define three-kind hand match)
  )

(define (two-pairs? hand)
  (define (two-pair hand match)
    (cond ((>= 1 (count hand)) #f)
	  ((and (= (rank (first-card hand)) (rank (second-card hand)))      (empty? match))  (two-pair (rest-of-hand hand) (first-card hand)))
	  ((and (= (rank (first-card hand)) (rank (second-card hand))) (not (empty? match))) (se '(two pairs - ) (name-rank match) 'and (name-rank (first-card hand))))
	  (else (two-pair (rest-of-hand hand) match))
	  )
      )
  (two-pair hand '())
  )

(define (one-pair? hand)

  (cond ;;((empty? hand) #f)
	((>= 1 (count hand)) #f)
	((= (rank (first-card hand)) (rank (second-card hand)))(se '(pair of ) (name-rank (first-card hand))))
	(else (one-pair? (rest-of-hand hand)))
	)
  )

(define rank-name-singular '(NO-ONE  two  three  four  five  six   seven  eight  nine  ten  jack  queen  king  ace ))
(define rank-name-plural   '(NO-ONES twos threes fours fives sixes sevens eights nines tens jacks queens kings aces))
(define (name-rank card) (item (rank card) rank-name-plural))
  
(define (rank c)
  (let ((r (bf c)))
    (cond ((empty?  c  )  0)
	  ((equal? 'j r) 11)
          ((equal? 'q r) 12)
	  ((equal? 'k r) 13)
	  ((equal? 'a r) 14)
	  (else           r))
    )
  )

(define (sort-rank hand)
  (if (empty? hand)
      hand
      (se (highest-card hand) (sort-rank (remove (highest-card hand) hand)))
      )
  )

(define (highest-card hand)
  (cond ((empty? hand) '())
	((= (count hand) 1) (first hand))
	((>= (rank (first hand)) (rank (first (bf hand)))) (highest-card (se (first hand) (bf (bf hand)))))
	(else                                              (highest-card (bf hand)))))	    

(define (remove card hand)
  (define (remove-helper before card after)
    (cond ((empty? after             ) (se before after))
	  ((equal? card (first after)) (se before (bf after)))
	  (else (remove-helper (se before (first after)) card (bf after)))))
  (remove-helper '() card hand)
  )
