;; window numbering
(evil-leader/set-key
  "0" 'select-window-0
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "4" 'select-window-4
  "5" 'select-window-5
  "6" 'select-window-6
  "7" 'select-window-7
  "8" 'select-window-8
  "9" 'select-window-9)
(window-numbering-mode)

;; fancy window numbers used for status line, copied from spacemacs
(defun unicode-window-number ()
  "Return the number of the window."
  (let* ((num (window-numbering-get-number))
	 (str (if num (int-to-string num))))
    (cond
     ((equal str "1")  "➊")
     ((equal str "2")  "➋")
     ((equal str "3")  "➌")
     ((equal str "4")  "➍")
     ((equal str "5")  "➎")
     ((equal str "6")  "❻")
     ((equal str "7")  "➐")
     ((equal str "8")  "➑")
     ((equal str "9")  "➒")
     ((equal str "0")  "➓"))))

;; popwin
(setq display-buffer-function 'popwin:display-buffer)

;; move back and forth between buffers
(defun next-code-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (next-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (next-buffer))))

(defun previous-code-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (previous-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (previous-buffer))))

(global-set-key (kbd "C-S-l") 'next-buffer)
(global-set-key (kbd "C-S-h") 'previous-buffer)
(evil-leader/set-key "l" 'next-code-buffer)
(evil-leader/set-key "h" 'previous-code-buffer)

(provide 'rob-window-management)
