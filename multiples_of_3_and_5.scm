;; Function to determine if the number is a multiple of 3 or 5

(define 3-or-5
  (lambda (x)
    (or (eq? (remainder x 3) 0) (eq? (remainder x 5) 0))))

;; Sum all the numbers divisble by 3 or 5
(define sum-3-or-5
  (lambda (x)
    (let ([y (- x 1)])
      (let sum-up ([i y])
	(cond
	 [(zero? i) 0]
	 [(3-or-5 i) (+ i (sum-up (- i 1)))]
	 [else (+ 0 (sum-up (- i 1)))]))))) 
