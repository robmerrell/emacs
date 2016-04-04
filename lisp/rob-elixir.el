(require 'alchemist)

(add-hook 'elixir-mode-hook
	  (lambda ()
	    (setq evil-shift-width 2)
	    (setq tab-width 2)))

;; keybinds
(evil-leader/set-key-for-mode 'elixir-mode
  ;; testing
  "<SPC>ta" 'alchemist-mix-test
  "<SPC>tb" 'alchemist-mix-test-this-buffer
  "<SPC>tp" 'alchemist-mix-test-at-point
  "<SPC>tc" 'alchemist-project-run-tests-for-current-file

  ;; mix
  "<SPC>mc" 'alchemist-mix-compile
  "<SPC>mr" 'alchemist-mix-run
  "<SPC>mx" 'alchemist-mix

  ;; help
  "<SPC>hx" 'alchemist-help
  "<SPC>hc" 'alchemist-help-search-at-point

  ;; iex
  "<SPC>is" 'alchemist-iex-project-run
  "<SPC>ir" 'alchemist-iex-send-region
  "<SPC>im" 'alchemist-iex-reload-module

  ;; misc
  "<SPC>d" 'alchemist-info-datatype-at-point
  "<SPC>j" 'alchemist-goto-definition-at-point)

(provide 'rob-elixir)
