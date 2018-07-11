(defvar actual-number 999999)
(defvar longest-series 0)
(defvar temp-series 0)
(defvar largest-number 0)

(defun set-results()
  (setq largest-number actual-number)
  (setq longest-series temp-series))
  
(defun get-next(n)
  (if (eq (mod n 2) 0)
      (/ n 2)
      (+ 1 (* n 3))))

(defun find-next(n)
  (let ((next (get-next n)))
    (setq temp-series (+ temp-series 1))
    (if (not (eq n 2))
	(find-next next))))

(defun main()
  (loop
     while (> actual-number 500000)
     do (find-next actual-number)
       (if (> temp-series longest-series)
	   (set-results))
       (setq temp-series 0)
       (setq actual-number (- actual-number 1)))
  (print largest-number))