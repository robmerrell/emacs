;; (global-rbenv-mode)

;; don't show the ruby version in the mode line. It's not that important...
;; (setq rbenv-show-active-ruby-in-modeline nil)
;; (setq rbenv-modeline-function 'rbenv--modeline-plain)

;; Open these files in ruby mode
(add-to-list 'auto-mode-alist '("Gemfile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook
	  (lambda ()
	    (setq ruby-deep-indent-paren nil)
	    (setq ruby-indent-level 2)
	    (setq evil-shift-width 2)
	    (setq tab-width 2)))

(provide 'rob-ruby)
