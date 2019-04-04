;;;;;;;; Get All Needed Variable ;;;;;;;;
(defvar in1 (open "./res/file1.txt" :if-does-not-exist nil))
(defvar countIn1 0)
(defvar getIn1 ())

(loop for line = (read-line in1 nil)
    while line do (setq getIn1 (push line getIn1)) 
                  (setq countIn1 (+ countIn1 1))
)
(setq getIn1 (reverse getIn1))

(defvar in2 (open "./res/file2.txt" :if-does-not-exist nil))
(defvar countIn2 0)
(defvar getIn2 ())
(loop for line = (read-line in2 nil)
    while line do (setq getIn2 (push line getIn2)) 
                  (setq countIn2 (+ countIn2 1))
)
(setq getIn2 (reverse getIn2))

(close in1)
(close in2)



;;;;;;;; Utils ;;;;;;;;
(defvar return_get_list_item "")
(defun get_list_item(list_number number)
    (let ((tmplist1 ()))
        (if (equal 1 list_number)
            (setq tmplist1 getIn1)
            (setq tmplist1 getIn2)
        )
        (setq return_get_list_item (car tmplist1))
        (setq number (- number 1))
        (if (> number 0)
            (loop
                (setq tmplist1 (cdr tmplist1)) 
                (setq return_get_list_item (car tmplist1))
                (setq number (- number 1))
                (when (equal number 0) (return))
            )
        )
    )
)



;;;;;;;; Main Function ;;;;;;;;
(defvar file2Line 1)

(let ((i 1) (j 1))
    (loop
        (get_list_item 1 i)
        (let ((return_list1 return_get_list_item))
            (block inner_loop
                (loop
                    (get_list_item 2 j)
                    (cond ((equal return_list1 return_get_list_item)
                            (loop
                                (get_list_item 2 file2Line)
                                (format t "~c[32m+ ~a~c[0m~%" #\ESC return_get_list_item #\ESC)
                                (setq file2Line (+ 1 file2Line))
                                (cond ((equal file2Line j) 
                                    (get_list_item 2 file2Line)
                                    (write-line return_get_list_item)
                                    (setq file2Line (+ 1 file2Line))
                                    (return-from inner_loop 0))
                                )
                            )
                        )
                    )
                    (setq j (+ 1 j))
                    (when (equal j countIn2) (return))
                )
            )
            (cond ((equal j countIn2)
                (format t "~c[31m- ~a~c[0m~%" #\ESC return_list1 #\ESC)
                )
            )
            (setq j file2Line)
        )
        (setq i (+ 1 i))
        (when (equal i countIn1) (return))
    )
)
(format t "}~%")








;;;;;;;; Reference ;;;;;;;;
; colorful output : https://stackoverflow.com/questions/19208933/change-the-color-of-the-text-in-the-common-lisp-repl]
; (format t "~c[31mabc~c[0m~%" #\ESC #\ESC)