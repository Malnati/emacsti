;;; packages --- .install.el
;;; Commentary:
;;;

(progn
  "Setting stable and unstable Melpa's repositories.
For installing `use-package'"
  (package-initialize)
  (condition-case nil
      (require 'use-package)
    (file-error
     (package-initialize)
     (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
     (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
     (package-refresh-contents)
     (package-install 'use-package)
     (require 'use-package)
     (require 'use-package-ensure)
     (setq use-package-always-ensure t))))

(progn
  "Setting the exec-path-from-shell.
For installing by `use-package'"
  (when (member system-type '(ns darwin))
    (use-package exec-path-from-shell
      :ensure
      :config (progn
		(exec-path-from-shell-initialize)))))

(progn
  "Setting the packages.
For installing by `use-package'"
  (use-package all-the-icons)
  (use-package all-the-icons-ibuffer)
  (use-package avy)
  (use-package company)
  (use-package company-box)
  (use-package dap-mode)
  (use-package dash)
  (use-package drag-stuff)
  (use-package expand-region)
  (use-package flycheck)
  ;; (use-package helm)
  ;; (use-package helm-projectile)
  (use-package hydra)
  (use-package indent-guide)
  (use-package ivy)
  (use-package js2-mode)
  (use-package js2-refactor)
  (use-package json-mode)
  (use-package memoize)
  (use-package multiple-cursors)
  (use-package nord-theme)
  (use-package projectile)
  (use-package s)
  (use-package treemacs)
  (use-package treemacs-projectile)
  (use-package which-key)
  (use-package xref-js2)
  (use-package yasnippet)
  (use-package yasnippet-snippets)
  (use-package page-break-lines)
  (use-package dashboard)
  (use-package company-quickhelp)
  (use-package smart-mode-line))

;;; .install.el ends here
