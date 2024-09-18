; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;reader(lib "htdp-advanced-reader.ss" "lang")((modname |1 line calculator|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


; Single line calculator  

; Must display all 4 operators(functions) result 

; All operators are functions themselves 

; lambda function will take in 2 number x y  

; List can contain elements of multiple types inside 

; Using list display the action name and the result of the operation next to it 

(define mycalc(lambda (x y) (list "Sum:" (+ x y) "Difference" (- x y) "Product" (* x y) "Division" (/ x y) ) ) )  

(mycalc 5 3) 

(mycalc 5.3 3.5) 


; the other way to make it work is 

(define calcWInputs(lambda(x op y) (op x y))) 
; calcWInputs requires 2 values and operator;
; In schema Operators are actually functions
; this way is not protected from errors because inputs might not always be what they are supposed to be

(calcWInputs 3 + 4)
(calcWInputs 3 - 4)
(calcWInputs 3 / 4)
(calcWInputs 3 * 4)