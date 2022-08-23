Slightly frustrated that this book is using word/sentence terminology.
I'm thinking it will be element and lists when using SICP...


every - apply to *every* word in the sentence...
        _applies to each element of list?_
		_perl map_

keep  - applies predicate to each element of sentence and keeps #t elements
        _perl grep_
		
accumulate - "applies the procedure to two of the words of a
             sentence. Then it applies the procedure to the results we
             got back and another element of the sentence, and so on."
			 
			 _Has some limitations with smaller number of arguments..._

             Can take word (not sentence) as second argument and then uses letters as elements.
			 
			 
			 
Table from book...

function   | purpose   | first argument is a ...
------------------------------------------------------------
every      | transform | one-argument transforming function
keep       | select    | one-argument predicate
accumulate | combine   | two-argument combining function

instructive example...

 (accumlate word '(a c l u)) --> (word 'a (word 'c (word 'l 'u)))

_is not clear to me why it needs to expand this way as opposed to the
opposite... i.e. working from front as opposed to back. But I'll
accept it for now.__


More Higher-Order Functions...

repeated - produced function that iteratively calls function on output of previous...

    ((repeated bf 3) '(she came in through the bathroom window))
      (through the bathroom window)

         3    2   1
      ( bf ( bf (bf '(she came in the bathroom window))))

    ((repeated plural 4) 'computer) 
       (plural (plural (plural (plural 'computer))))
       computerssss
	   
	((repeated square 2) 3)
	   (square (square 3))
	   
