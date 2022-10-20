(define two (lambda (list) 
    (cond
      ((null? list)#t)
      ((null? (cdr list))#t)
      ((null? (cddr list))#t)
      ((= (car list)(cadr list)) (two(cdr list)))
      ((= (car list)(caddr list)) (two (cdr list)))
      ((= (cadr list)(caddr list)) (two (cons(car list) (cddr list))))
      (else #f))))

;delete all elements that are not the first two unique elements
;if two elements next to eachother are the same do nothing, return the rest of the list
;if the 3rd element is different than the first two return false
;if the 3rd element is the same as the first two do nothing
;if there is a list of 2 elements or less return true

(two '())
(two '(7))
(two '(7 7))
(two '(6 7))
(two '(1 2 2 2 1 1))
(two '(21 15 15 21 15))
(two '(5 7 5 6 5))
(two '(10 15 21 22 10))