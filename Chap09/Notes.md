```
Lambda is special form generates procedures.

Making it suitable to use for anonymous procedures, 
such as those needed for higher-order functions...
 (e.g. every, keep, accumulate and repeat)

(define (add-three-to-each sent)
	(every (lambda (number) (+ number 3)) sent)
)

but that was still lame...

(define (make-adder num)
	(lambda (x) (+ x num))
)

Now, rather than add-three-to-each... and so forth
(every (make-adder 3) '(2 4 6))
```

```
The Truth About Define

(define (square x)(* x x))
(define square (lambda (x) (* x x)))

So, define followed by (_name_) does both -
 1. Sets a global _name_ and 
 2. associates that _name_ with an anonymous procedure
```

# The Truth About Let

Conventionally...
```
(define (roots a b c)
	(roots1 a b c (sqrt (- (* b b) (* 4 a c)))))

(define (roots1 a b c discriminant)
	(se (/ (+ (- b) discriminant) (* 2 a))
	(/ (- (- b) discriminant) (* 2 a))))
```

became...
```
(define (roots a b c)
	(let ((discriminant (sqrt (- (* b b) (* 4 a c)))))
		(se (/ (+ (- b) discriminant) (* 2 a))
			(/ (- (- b) discriminant) (* 2 a)))))
```

but, that is really same as using lambda and calling it!
```
(define (roots a b c)
	(lambda (discriminant)
		(se (/ (+ (- b) discriminant) (* 2 a))
			(/ (- (- b) discriminant) (* 2 a))))
		(sqrt (- (* b b) (* 4 a c))))
```

