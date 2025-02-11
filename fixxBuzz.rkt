#lang racket
(provide fizzbuzz)

;; The function counts from 1 to the specified number, printing a string with the result.
;; The rules are:
;;    If a number is divisible by 3 and by 5, instead say "fizzbuzz"
;;    Else if a number is divisible by 3, instead say "fizz"
;;    Else if a number is divisible by 5, instead say "buzz"
;;    Otherwise say the number
;;
(define (fizzbuzz n)
  (letrec ([helper (lambda (i)
                     (if (> i n)
                         ""
                         (string-append 
                          (cond 
                            [(and (= (modulo i 3) 0) (= (modulo i 5) 0)) "fizzbuzz"]
                            [(= (modulo i 3) 0) "fizz"]
                            [(= (modulo i 5) 0) "buzz"]
                            [else (number->string i)])
                          " "
                          (helper (+ i 1)))))])
    (helper 1)))