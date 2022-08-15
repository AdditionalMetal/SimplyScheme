;; Define a procedure to find somebody's middle name:
;;
;; (middle-names '(james paul mccartney))
;; (paul)
;;
;; (middle-names '(john ronald raoul tolkien))
;; (ronald raoul)
;;
;; (middle-names '(bugs bunny))
;; ()
;;
;; (middle-names '(peter blair denis bernard noone))
;; (blair denis bernard)

(define (middle-names sent) (bf (bl sent)))


;; Note: bl/bf will error if given empty sentence...
