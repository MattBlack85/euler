;; Collaaaaaatz
(defvar start 999999)
(defvar longest-series '())
(defvar temp-list '())
(defvar number-generate)

(defun set-max()
  (setq number-generate start)
  (setq longest-series temp-list))

(defun get-next(n)
  (if (eq (mod n 2) 0)
      (/ n 2)
      (+ 1 (* n 3))))

(defun find-next(n)
  (let ((next (get-next n)))
    (setq temp-list (append temp-list (list next)))
    (if (not (eq n 2))
	(find-next next))))

(defun main()
  (loop
     while (> start 500000)
     do (find-next start)
       (if (> (list-length temp-list) (list-length longest-series))
	   (set-max))
       (setq temp-list '())
       (setq start (- start 1)))
  (print number-generate))
