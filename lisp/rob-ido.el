(require 'ido-vertical-mode)

(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

(setq ido-show-dot-for-dired t)

(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
               "*Messages*" "Async Shell Command"))

(provide 'rob-ido)
