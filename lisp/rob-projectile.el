(projectile-global-mode)

;; ignores
(add-to-list 'projectile-globally-ignored-directories "internal")
(add-to-list 'projectile-globally-ignored-directories "deps")
(add-to-list 'projectile-globally-ignored-directories "build")

;; keybinds
(evil-leader/set-key
  "pf" 'projectile-find-file
  "ps" 'projectile-ag
  "pi" 'projectile-invalidate-cache)

(provide 'rob-projectile)
