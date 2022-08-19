;; seconds - minutes - hours - days - weeks - monthts - years - decades - centuries
(define (second  )(*             1  1.0)) (define (second?    time)( = time 1         )) (define (seconds?   time)(> time 1         ))
(define (minute  )(*             1 60.0)) (define (minute?    time)( = time (minute  ))) (define (minutes?   time)(> time (minute  )))
(define (hour    )(*            60 60.0)) (define (hour?      time)( = time (hour    ))) (define (hours?     time)(> time (hour    )))
(define (day     )(*       1 24 60 60.0)) (define (day?       time)( = time (day     ))) (define (days?      time)(> time (day     )))
(define (week    )(*       7 24 60 60.0)) (define (week?      time)( = time (week    ))) (define (weeks?     time)(> time (week    )))
(define (month   )(*      30 24 60 60.0)) (define (month?     time)( = time (month   ))) (define (months?    time)(> time (month   )))
(define (year    )(*   1 365 24 60 60.0)) (define (year?      time)( = time (year    ))) (define (years?     time)(> time (year    )))
(define (decade  )(*  10 365 24 60 60.0)) (define (decade?    time)( = time (decade  ))) (define (decades?   time)(> time (decade  )))
(define (century )(* 100 365 24 60 60.0)) (define (century?   time)( = time (century ))) (define (centuries? time)(> time (century )))

(define (describe-time time)
  (cond ((centuries? time) (se (/ time (century)) 'centuries )) ((century? time) '(1 century))
        ((decades?   time) (se (/ time (decade )) 'decades   )) ((decade?  time) '(1 decade ))
        ((years?     time) (se (/ time (year   )) 'years     )) ((year?    time) '(1 year   ))
        ((months?    time) (se (/ time (month  )) 'months    )) ((month?   time) '(1 month  ))
        ((weeks?     time) (se (/ time (week   )) 'weeks     )) ((week?    time) '(1 week   ))
        ((days?      time) (se (/ time (day    )) 'days      )) ((day?     time) '(1 day    ))
        ((hours?     time) (se (/ time (hour   )) 'hours     )) ((hour?    time) '(1 hour   ))
        ((minutes?   time) (se (/ time (minute )) 'minutes   )) ((minute?  time) '(1 minute ))
        ((seconds?   time) (se (/ time (second )) 'seconds   )) ((second?  time) '(1 second ))
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
