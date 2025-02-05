#lang racket

(provide reverse add-two-lists positive-nums-only)

(define (reverse lst)
  (if (null? lst)
      '()
      (append (reverse (cdr lst)) (list (car lst)))))

(define (add-two-lists lst1 lst2)
  (cond
    ((null? lst1) lst2)
    ((null? lst2) lst1)
    (else
      (cons (+ (car lst1) (car lst2))
            (add-two-lists (cdr lst1) (cdr lst2))))))

(define (positive-nums-only lst)
  (if (null? lst)
      '()
      (let ((first (car lst))
            (rest (positive-nums-only (cdr lst))))
        (if (> first 0)
            (cons first rest)
            rest))))