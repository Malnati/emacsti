;;;
;;; Code:

;; Location of the package archive.
(when (member window-system
	      '(pc w32 ms-dos windows-nt cygwin))
  (setq package-user-dir "~/.emacs.d/libs/elpa-mswin")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-mswin"))

(when (member system-type
	      '(ns darwin))
  (setq package-user-dir "~/.emacs.d/libs/elpa-macos")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-macos"))

(when (member system-type '(gnu/linux gnu x))
  (setq package-user-dir "~/.emacs.d/libs/elpa-linux")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-linux"))

(require 'package)
(package-initialize)

(add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
(package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/libs/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/libs/use-package-2.4.1/")
  (require 'use-package))

(when (member window-system '(ns darwin))
  (use-package exec-path-from-shell
    :ensure
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :ensure)

(use-package multiple-cursors
  :ensure)

(use-package hydra
  :ensure)

(use-package ivy
  :ensure)

(use-package avy
  :ensure)

(use-package which-key
  :ensure)

(use-package company
  :ensure)

(use-package dap-mode :ensure)

(use-package treemacs :ensure)

(use-package treemacs-projectile
  :ensure)

(use-package nord-theme
  :ensure)

(use-package s
  :ensure)

(use-package memoize
  :ensure)

(use-package dash
  :ensure)

(use-package all-the-icons
  :ensure)

(use-package all-the-icons-ibuffer
  :ensure)

(use-package company-box
  :ensure)

(use-package indent-guide
  :ensure)

(use-package drag-stuff
  :ensure)

(use-package projectile
  :ensure)

(use-package yasnippet
  :ensure)

(use-package yasnippet-snippets
  :ensure)

(use-package flycheck
  :ensure)

(use-package helm
  :ensure)

(use-package lsp-mode
  :ensure)
  
(use-package lsp-ui
  :ensure)

(use-package helm-lsp
  :ensure)

(use-package helm-projectile
  :ensure)

(use-package js2-mode
  :ensure)

(use-package js2-refactor
  :ensure)

(use-package xref-js2
  :ensure)

(use-package json-mode
  :ensure)

;;; .install.el ends here
