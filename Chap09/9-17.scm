;; 9.17  Write keep in terms of every and accumulate.

(define (mykeep predicate asentence)
  (if (sentence? asentence)
      (every (lambda(x)(if (predicate x) x '())) asentence)
      (if (predicate asentence) asentence '()))
  )
