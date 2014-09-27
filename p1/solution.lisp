(defvar *sum* 0)

(defun range (&key (min 1) max)
  (loop
       for number from min to max
       collect number))

(defun is-multiple (x)
  (or
   (if (equal (mod x 3) 0) (setf *sum* (+ x *sum*)))
   (if (equal (mod x 5) 0) (setf *sum* (+ x *sum*)))))

(defun find-primes ()
  (loop
       for item in (range :max 1000)
       do (is-multiple item)
       (print *ss*)))
