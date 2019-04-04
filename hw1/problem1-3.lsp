(defun fib1 (n)
    (if (<= n 2) 
        1
        (+ (fib1 (- n 1)) (fib1 (- n 2)))
    )
)

(defun fib2 (n)
    (defun tail-fib(n a b)
        (if (= n 0)
            a
            (tail-fib (- n 1) b (+ a b))
        )       
    )
    (tail-fib n 0 1)
)
(trace fib1)
(trace fib2)

(fib1 6)
(format t "~%~%")
(fib2 6)
