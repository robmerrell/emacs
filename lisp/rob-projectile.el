(projectile-global-mode)

;; ignores
(add-to-list 'projectile-globally-ignored-directories "internal")
(add-to-list 'projectile-globally-ignored-directories "deps")
(add-to-list 'projectile-globally-ignored-directories "build")

(setq projectile-enable-caching t)

;; keybinds
(evil-leader/set-key
  "pf" 'projectile-find-file
  "pb" 'projectile-switch-to-buffer
  "ps" 'projectile-ag
  "pi" 'projectile-invalidate-cache)

(provide 'rob-projectile)
