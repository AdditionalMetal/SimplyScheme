;; 10.1 The ttt procedure assumes that nobody has won the game
;; yet. What happens if you invoke ttt with a board position in which
;; some player has already won? Try to figure it out by looking
;; through the program before you run it.
;;
;; A complete tic-tac-toe program would need to stop when one of the
;; two players wins. Write a predicate already-won? that takes a board
;; position and a letter (x or o) as its arguments and returns #t if
;; that player has already won.
;;--------------------------------------------------------------------

;; What happens?
;;
;;  Wining hands will be skipped ignored.
;;
;;  ttt -> ttt-choose
;;         --> find-triples -> subsitute-triple -> substitute-letter
;;         --> i-can-win?
;;         --> opponent-can-win?
;;
;;  i-can-win?/opponent-can-win? only checks if two 'x or 'o are in
;;  triple exactly and calls choose-win that returns the number that
;;  is left in the triple.
;;  
;;  Winning triples will be ignored and play will continue, which
;;  would be wrong.


(load "Chap10/ttt.scm")

(define (my-triple? triple me)
  (= (appearances me triple) 3)
  )

(define (opponent-triple? triple me)
  (my-triple? triple (opponent me))
  )

(define (already-won? position me)
  (not (empty? (keep (lambda(y)(my-triple? y me)) (find-triples position))))
  )
