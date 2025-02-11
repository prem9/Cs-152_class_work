#lang racket
(provide max-num)
(define (max-num lst)
  (if (null? lst) 
      (error "List cannot be empty")
      (if (null? (cdr lst)) 
          (car lst)
          (max (car lst) (max-num (cdr lst))))))