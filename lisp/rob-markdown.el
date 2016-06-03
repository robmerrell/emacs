; open markdown files
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; keybinds
(evil-leader/set-key-for-mode 'markdown-mode
  "<SPC>f" 'markdown-follow-link-at-point
  "<SPC>p" 'markdown-preview
  "<SPC>l" 'markdown-live-preview-mode)
(setq markdown-command "marked")

(provide 'rob-markdown)
