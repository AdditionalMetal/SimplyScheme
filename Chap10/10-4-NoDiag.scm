;;  10.4 Here are some possible changes to the rules of tic-tac-toe:
;; 
;; • What if you could win a game by having three squares forming an L
;;   shape in a corner, such as squares 1, 2, and 4?
;;
;; • What if the diagonals didn't win?
;;
;; • What if you could win by having four squares in a corner, such as
;;   1, 2, 4, and 5?
;; 
;; Answer the following questions for each of these modifications
;; separately: What would happen if we tried to implement the change
;; merely by changing the quoted sentence of potential winning
;; combinations in find-triples? Would the program successfully follow
;; the rules as modified?

(load "Chap10/ttt.scm")

;; No Diagonal winners...
(define (find-triples position)
  (every (lambda (comb) (substitute-triple comb position))
         '(123 456 789 147 258 369)))

(define (best-free-square triples)
  (first-choice (accumulate word triples)
                '(1 3 7 9 2 4 6 8 5)))

;; some test cases...
;;(ttt 'xxooooxx_ 'x)
