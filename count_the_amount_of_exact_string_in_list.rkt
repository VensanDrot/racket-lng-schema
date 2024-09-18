; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;reader(lib "htdp-advanced-reader.ss" "lang")((modname |1 line calculator|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


(define findString ; defining function called findString 
  (lambda (lst res) ; required 2 inputs, list of strings, and starting value for the count    
    (if (null? lst) ; if list is empty display result   
        res 
        (findString (cdr lst) (if(string=? (car lst) "e") (+ 1 res) res) )))) 
    ; if list is not empty call function again provide it with list removing the first value from it using cdr 
    ; if current string equal to "e" increase counter otherwise return previous counter 

(findString (list "e" "e1" "e2" "e" "e")  0) 
 