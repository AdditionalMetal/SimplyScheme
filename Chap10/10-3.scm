;;  10.3  A real human playing tic-tac-toe would look at a board like this:
;; 
;; o	x	o
;; o	x	x
;; x	o	
;;  
;; and notice that it's a tie, rather than moving in square 9. Modify
;; tie-game? from Exercise 10.2 to notice this situation and return
;; #t.
;; 
;; (Can you improve the program's ability to recognize ties even
;; further? What about boards with two free squares?)

(load "Chap10/ttt.scm")


(define (board-filled? position)(not (member? '_ position)))
(define (last-move?    position)(equal? 1 (count (keep (lambda(y)(equal? '_ y)) position))))

(define (tie-game? position me)
  (cond ((board-filled? position))
	((and (last-move? position)
	      (not (i-can-win? (find-triples position) me))
	      ))
	(else #f)
      ))

