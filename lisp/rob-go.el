(setenv "GOPATH" "/Users/robmerrell/projects/globalgo")

;; fmt on save
(add-hook 'before-save-hook 'gofmt-before-save)

(defun go-run-tests ()
  (interactive)
  (shell-command "go test"))

(add-hook 'go-mode-hook
          (lambda ()
            (go-eldoc-setup)

            (setq tab-width 4)

            ))

(provide 'rob-go)
