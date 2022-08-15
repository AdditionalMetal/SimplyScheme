;; What does ''banana stand for?
;;----------------------------------------
;; ''banana --> (quote (quote banana))
;; When evaluated STKLOS will display
;;
;; 'banana 
;;
;; which is equivalent to (quote banana)
''banana

;; What is (first ''banana) and why?
;;----------------------------------------
;; (first ''banana)
;; (first (quote (quote banana)))
;; (first "quote banana")
;; quote
(first ''banana)
