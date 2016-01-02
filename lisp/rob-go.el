(setenv "GOPATH" "/Users/robmerrell/projects/globalgo")

;; fmt on save
(add-hook 'before-save-hook 'gofmt-before-save)

(defun go-run-tests ()
  (interactive)
  (shell-command "go test"))

;; hooks
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'flycheck-mode)

;; keybinds
(evil-leader/set-key-for-mode 'go-mode
  "<SPC>t" 'go-run-tests
  "<SPC>a" 'go-import-add
  "<SPC>r" 'go-remove-unused-imports
  "<SPC>h" 'godoc-at-point
  "<SPC>j" 'godef-jump)

(add-hook 'go-mode-hook
          (lambda ()
            (go-eldoc-setup)
            (setq tab-width 4)

            ;; company mode
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)))

(provide 'rob-go)
