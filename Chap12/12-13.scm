;;  12.13 Write a new version of the describe-time procedure from
;;        Exercise 6-14. Instead of returning a decimal number, it
;;        should behave like this:
;; 
;; > (describe-time 22222)
;; (6 HOURS 10 MINUTES 22 SECONDS)
;; 
;; > (describe-time 4967189641)
;; (1 CENTURIES 57 YEARS 20 WEEKS 6 DAYS 8 HOURS 54 MINUTES 1 SECONDS)
;; 
;; Can you make the program smart about saying 1 CENTURY instead of 1 CENTURIES?

;; seconds - minutes - hours - days - weeks - monthts - years - decades - centuries
(define (second  )(*             1  1.0)) (define (second?    time)(>= time 0         )) (define (seconds?   time)(> time 1         ))
(define (minute  )(*             1 60.0)) (define (minute?    time)( = time (minute  ))) (define (minutes?   time)(> time (minute  )))
(define (hour    )(*            60 60.0)) (define (hour?      time)( = time (hour    ))) (define (hours?     time)(> time (hour    )))
(define (day     )(*       1 24 60 60.0)) (define (day?       time)( = time (day     ))) (define (days?      time)(> time (day     )))
(define (week    )(*       7 24 60 60.0)) (define (week?      time)( = time (week    ))) (define (weeks?     time)(> time (week    )))
(define (month   )(*      30 24 60 60.0)) (define (month?     time)( = time (month   ))) (define (months?    time)(> time (month   )))
(define (year    )(*   1 365 24 60 60.0)) (define (year?      time)( = time (year    ))) (define (years?     time)(> time (year    )))
(define (decade  )(*  10 365 24 60 60.0)) (define (decade?    time)( = time (decade  ))) (define (decades?   time)(> time (decade  )))
(define (century )(* 100 365 24 60 60.0)) (define (century?   time)( = time (century ))) (define (centuries? time)(> time (century )))

(define (describe-time time)
  (cond ((centuries? time) (se (quotient time (century)) 'centuries (describe-time (- time (* (century) (floor (/ time (century)))))) )) ((century? time) '(1 century))
        ((decades?   time) (se (quotient time (decade )) 'decades   (describe-time (- time (* (decade ) (floor (/ time (decade )))))) )) ((decade?  time) '(1 decade ))
        ((years?     time) (se (quotient time (year   )) 'years     (describe-time (- time (* (year   ) (floor (/ time (year   )))))) )) ((year?    time) '(1 year   ))
        ((months?    time) (se (quotient time (month  )) 'months    (describe-time (- time (* (month  ) (floor (/ time (month  )))))) )) ((month?   time) '(1 month  ))
        ((weeks?     time) (se (quotient time (week   )) 'weeks     (describe-time (- time (* (week   ) (floor (/ time (week   )))))) )) ((week?    time) '(1 week   ))
        ((days?      time) (se (quotient time (day    )) 'days      (describe-time (- time (* (day    ) (floor (/ time (day    )))))) )) ((day?     time) '(1 day    ))
        ((hours?     time) (se (quotient time (hour   )) 'hours     (describe-time (- time (* (hour   ) (floor (/ time (hour   )))))) )) ((hour?    time) '(1 hour   ))
        ((minutes?   time) (se (quotient time (minute )) 'minutes   (describe-time (- time (* (minute ) (floor (/ time (minute )))))) )) ((minute?  time) '(1 minute ))
        ((seconds?   time) (se (quotient time (second )) 'seconds                                                                     )) ((second?  time) (se (quotient time 1) 'second)) ;; 0 second or 0 seconds?
        (else '(unknown time)))
  )

;;------------------------------------------------------------
(define (test-describe-time)
  (cond ((not (equal? '(9.5 centuries) (describe-time 29959200000))) '(failed 29959200000))
        ((not (equal? '(15.5 minutes)  (describe-time 930)))         '(failed 930))
        ((not (equal? '(45 seconds)    (describe-time 45)))          '(failed 45))
        (else '(Passed all tests - hope there were enough...))
        )
  )
