;; load the package manager and add archive sources
(require 'package)
(setq package-archives
      (append '(("melpa" . "http://melpa.milkbox.net/packages/"))
	      package-archives))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; refresh the package archives listings
(unless package-archive-contents
  (package-refresh-contents))

;; install packages
(defvar my-packages
  '(ace-jump-mode
    alchemist
    ag
    clojure-mode
    company
    company-go
    elixir-mode
    enh-ruby-mode
    evil
    evil-leader
    evil-magit
    evil-nerd-commenter
    evil-org
    evil-surround
    exec-path-from-shell
    expand-region
    flx-ido
    flycheck
    go-mode
    go-eldoc
    ido-vertical-mode
    json-mode
    js2-mode
    magit
    markdown-mode
    org-bullets
    php-mode
    popwin
    powerline
    projectile
    restclient
    smartparens
    toml-mode
    undo-tree
    web-mode
    window-numbering
    yaml-mode)
  "A list of packages to ensure are installed at launch.")

;; install the packages on startup
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; set the path from the shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Add to load-path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Make emacs the default editor
(setenv "EDITOR" "emacsclient")

(setq-default display-buffer-reuse-frames t)

;; turn off the tool bar, scroll bar and menu bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(menu-bar-mode -99)

;; don't show the startup screen
(setq inhibit-startup-message t)

;; use y or n for choices
(defalias 'yes-or-no-p 'y-or-n-p)

;; turn off the bell
(setq ring-bell-function 'ignore)

;; font
(set-frame-font "DejaVu Sans Mono-12")

;; show line numbers
(global-linum-mode 1)

;; show trailing whitespace
(setq-default show-trailing-whitespace 1)

;; spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; theme
(if window-system
    (progn
      (require 'doom)
      (load-theme 'doom-one t))
      ;; (load "~/.emacs.d/themes/flatland-theme.el")
      ;; (load-theme 'flatland t))
  (progn
    (load "~/.emacs.d/themes/ujelly-theme.el")
    (load-theme 'ujelly t)))

;; parens
(show-paren-mode 1)
(setq show-paren-delay 0)
(smartparens-global-mode t)
(require 'smartparens-config)
(setq sp-autoescape-string-quote nil)
(setq sp-highlight-pair-overlay nil)
(setq sp-highlight-wrap-overlay nil)
(setq sp-highlight-wrap-tag-overlay nil)

;; don't create backup~ or #auto-save# files
(setq backup-by-copying t
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)


;; load sub packages
(setq rob-pkg-full
      '(s
        rob-evil
        rob-ido
        rob-window-management
        rob-company
        rob-projectile
        rob-org
        rob-markdown
        rob-elixir
        rob-go
        rob-ruby
        rob-javascript
        rob-php
        rob-webmode
        rob-rest
        rob-modeline
        rob-magit
        rob-music))

(dolist (file rob-pkg-full)
  (require file))

;; open a new empty buffer
(defun new-empty-buffer ()
  "Create a new buffer called untitled(<n>)"
  (interactive)
  (let ((newbuf (generate-new-buffer-name "untitled")))
    (switch-to-buffer newbuf)))

;; open the emacs config path
(defun open-config-path ()
  (interactive)
  (find-file "~/.emacs.d"))
