;; Generate Fibonnaci numbers
(define fibonnaci
  (lambda (n)
    (let fib ([i n])
      (cond
       [(eq? i 0) 0]
       [(eq? i 1) 1]
       [else (+ (fib (- i 1)) (fib (- i 2)))]))))

;; Generate a list of all fibonnaci numbers that aren't
;; larger than the target
(define gen-list
  (lambda (n)
    (let iter ([i 0])
      (if (> (fibonnaci i) 4000000)
	  '()
	  (cons (fibonnaci i) (iter (+ i 1)))))))

;; Use apply and the + procedure to sum every element of this list
;; I selected 1000 as more than sufficient to reach a fib number >
;; 4000000
(define sol (apply + (filter even? (gen-list 1000))))
