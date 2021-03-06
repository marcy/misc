;; -*- mode: emacs-lisp; -*-
;; http://codr.cc/42CA9D561D

(define-key global-map "\C-h" 'delete-backward-char)
(global-set-key "\C-ch" 'help-for-help)

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(require 'minibuf-isearch)

(add-to-list 'load-path "~/.emacs.d/site-lisp/ruby")
(add-to-list 'load-path "~/.emacs.d/site-lisp/rinari")

;; ruby-mode
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))

;; ruby-electric.el --- electric editing commands for ruby files
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)

;; rinari
(require 'ido)
(ido-mode t)
;; Rinari
(require 'rinari)
