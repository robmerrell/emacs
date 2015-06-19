(require 'company-go)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.5)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above t)
(define-key evil-insert-state-map (kbd "C-p") 'company-complete)

(provide 'rob-company)
