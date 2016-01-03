(setq magit-last-seen-setup-instructions "1.4.0")

;; evil keybinds \o/ shamelessly yoinked from https://github.com/tarleb/evil-rebellion/blob/master/evil-magit-rebellion.el
(evil-set-initial-state 'magit-status-mode 'motion)
(evil-define-key 'motion magit-status-mode-map
  "\t" 'magit-section-toggle)

(provide 'rob-magit)
