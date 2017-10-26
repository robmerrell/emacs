(setenv "GOPATH" "/Users/robmerrell/projects/globalgo")

;; fmt on save
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(defun go-run-tests ()
  (interactive)
  (message
   (s-replace "\t" " "
   (s-replace "" ""(shell-command-to-string "go test")))))

(defun go-run-lint ()
  (interactive)
  (shell-command "golint"))

;; hooks
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'flycheck-mode)

;; keybinds
(evil-leader/set-key-for-mode 'go-mode
  "<SPC>t" 'go-run-tests
  "<SPC>l" 'go-run-lint
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
