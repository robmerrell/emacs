(require 'ido-vertical-mode)

(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)

(flx-ido-mode 1)

(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
               "*Messages*" "Async Shell Command"))

(provide 'rob-ido)
