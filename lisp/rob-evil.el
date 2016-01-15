(global-evil-leader-mode)
(evil-mode 1)
(setq evil-esc-delay 0)

;; cursor states
(setq evil-emacs-state-cursor  '("red" box))
(setq evil-normal-state-cursor '("gray" box))
(setq evil-visual-state-cursor '("gray" box))
(setq evil-insert-state-cursor '("gray" bar))
(setq evil-motion-state-cursor '("gray" box))

;; evil-leader
(evil-leader/set-leader "<SPC>")

;; global keybinds not in any other configs
(evil-leader/set-key
  ;; directories
  "fe" 'open-config-path

  ;; files
  "ff" 'find-file
  "fn" 'new-empty-buffer
  "fb" 'ido-switch-buffer

  ;; navigation
  "j" 'ace-jump-char-mode

  ;; eval
  "er" 'eval-region
  "eb" 'eval-buffer
  "ee" 'eval-last-sexp
  "ef" 'eval-defun

  ;; magit
  "gs" 'magit-status

  ;; comments
  "cl" 'evilnc-comment-or-uncomment-lines
  "ci" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line)

;; keybinds for modes not in other configs
(evil-leader/set-key-for-mode 'restclient-mode
  "ms" 'restclient-http-send-current)

(provide 'rob-evil)
