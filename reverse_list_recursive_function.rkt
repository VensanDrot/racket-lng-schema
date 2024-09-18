;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;reader(lib "htdp-advanced-reader.ss" "lang")((modname reverse_list_recursive_function) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define reverseList     ; Define function called reverseList 
  (lambda (lst result)      ; requires 2 variables for the function initial list and result list 
    (if (null? lst)      ; if list is empty display result 
        result       ; display result 
        (reverseList (cdr lst) (cons (car lst) result))))) 

; else call function and provide it with initial list without first value 

; result list starts empty end fills step by step with values from the beginning of the intial list 

; using car mylist we take 1st value of the list  

(reverseList (list 1 2 3 4) (list)) 