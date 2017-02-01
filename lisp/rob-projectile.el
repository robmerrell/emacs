(projectile-global-mode)

;; ignores
;; go
(add-to-list 'projectile-globally-ignored-directories "Godeps")
(add-to-list 'projectile-globally-ignored-directories "vendor")
;; elixir
(add-to-list 'projectile-globally-ignored-directories "_build")
(add-to-list 'projectile-globally-ignored-directories "deps")
(add-to-list 'projectile-globally-ignored-directories "node_modules")
;; emacs
(add-to-list 'projectile-globally-ignored-directories "elpa")

(setq projectile-enable-caching t)

;; keybinds
(evil-leader/set-key
  "pf" 'projectile-find-file
  "pb" 'projectile-switch-to-buffer
  "ps" 'projectile-ag
  "pi" 'projectile-invalidate-cache)

(provide 'rob-projectile)
