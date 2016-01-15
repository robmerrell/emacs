;; force js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; hooks
(add-hook 'js2-mode-hook 'flycheck-mode)

(add-hook 'js2-mode-hook
          (lambda ()
            (setq-default js2-basic-offset 2)))

(add-hook 'js-mode-hook
          (lambda()
            (setq-default js-indent-level 2)))

(provide 'rob-javascript)
