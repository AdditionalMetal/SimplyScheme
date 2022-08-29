;; Goal: (who '(sells out))
;;       --> (pete sells out roger sells out john sells out keith sells out)


(define (lf action) ( lambda (person) (se person action) ))
;; lf returns procedure where person does action
;;  ((lf '(answers)) '(peter)) -> '(peter answers)

;; apply to whole group...
(define (who action)
  (every (lf action) '(pete roger john keith))
  )

;; stklos> (load "Chap09/9-4.scm")
;; stklos> (who '(sells out))
;; (pete sells out roger sells out john sells out keith sells out)
