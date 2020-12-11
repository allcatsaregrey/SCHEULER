;; Import Racket math library
(require math)

;; Take a number factorize it into pairs, select
;; first element of each pair and find the max
(define (largest-prime-factor)
  (lambda (x)
    (apply max (map car (factorize x)))))

;; Calculate the solution for the given number...
(define sol (largest-prime-factor 600851475143))
