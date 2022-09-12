;; 10.2 The program also doesn't notice when the game has ended in a
;; tie, that is, when all nine squares are already filled. What
;; happens now if you ask it to move in this situation?
;;
;; Write a procedure tie-game? that returns #t in this case. 

;; When the board is full, you'll branch to best-free-square. There
;; are no possible squares and you'll have an empty sentence which
;; will error when first calls on it.

(load "Chap10/ttt.scm")

(define (board-filled? position)
  (empty? (accumulate word (every (lambda(y)(keep number? y)) (find-triples position))))
  ;; Awkward... needed to break it down...
  ;;  (find-triples 'oxooxxxo_)     -> (oxo oxx xo9 oox xxo ox9 ox9 oxx)
  ;;  e.g. (keep number? 'xo9)      -> 9
  ;;  (every (lambda(...)(find-...) -> ("" "" 9 "" "" 9 9 "")
  ;;  (accumulate word ...)         -> 999
  )

(define (tie-game? position me)
  (board-filled? position)
  )
