(defvar divisors '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))
(defvar d 1)

(defun is-divisible (n)
  (loop for divisor in divisors
     do (if (not (eq (mod n divisor) 0))
	    (return))
       (setq d divisor)))

(defun main ()
  (let ((x 10))
    (loop
       while (not (eq d 20))
       do (is-divisible x)
	 (setq x (+ x 10)))
    (print (- x 10))))
