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

;; Each Corner...
;;
;; 1 2 3
;; 4 5 6
;; 7 8 9
;;
;; 214, 236, 698, 874
;;
;; Assuming that row/columns/diagonals no longer win...
;;
;;  Strategy is probably still right, but forks/pivots are going to look weird.
;;
;;  Best moves are no longer center, corners, middles - they were
;;  hard-coded as opposed to derived by counting the overlaps. They
;;  should be changed to middles, corners, center - 2 4 6 8 1 3 7 9 5
;;  - or just reverse the existing choices
;;
;; Redefine the hard-coded strategy...
(define (find-triples position)
  (every (lambda (comb) (substitute-triple comb position))
         '(123 456 789 147 258 369 159 357)))

(define (best-free-square triples)
  (first-choice (accumulate word triples)
                '(5 1 3 7 9 2 4 6 8)))

;; some test cases...
(ttt 'xxooooxx_ 'x)
