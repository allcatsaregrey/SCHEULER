;; Generate a list of all Fibonnaci numbers of interest

(define fibonnaci
  (lambda (n)
    (let fib ([i n])
      (cond
       [(eq? i 0) 0]
       [(eq? i 1) 1]
       [else (+ (fib (- i 1)) (fib (- i 2)))]))))

;; Generate and filter even Fibonnaci numbers from list

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
