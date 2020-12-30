;;; packages --- .install.el
;;; Commentary:
;;; Code:

(require 'use-package)

(when (member system-type '(ns darwin))
  (use-package exec-path-from-shell
    :ensure
    :config (progn
	      (exec-path-from-shell-initialize))))

(use-package all-the-icons :ensure)
(use-package all-the-icons-ibuffer :ensure)
(use-package avy :ensure)
(use-package company :ensure)
(use-package company-box :ensure)
;;(use-package dap-java :ensure)
(use-package dap-mode :ensure)
(use-package dash :ensure)
(use-package drag-stuff :ensure)
(use-package eglot :ensure)
(use-package expand-region :ensure)
(use-package flycheck :ensure)
(use-package helm :ensure)
;;(use-package helm-lsp :ensure)
(use-package helm-projectile :ensure)
(use-package hydra :ensure)
(use-package indent-guide :ensure)
(use-package ivy :ensure)
(use-package js2-mode :ensure)
(use-package js2-refactor :ensure)
(use-package json-mode :ensure)
;; (use-package lsp-java :ensure)
;; (use-package lsp-mode :ensure)
;; (use-package lsp-treemacs :ensure)
;; (use-package lsp-ui :ensure)
(use-package memoize :ensure)
(use-package multiple-cursors :ensure)
(use-package nord-theme :ensure)
(use-package projectile :ensure)
(use-package s :ensure)
(use-package treemacs :ensure)
(use-package treemacs-projectile :ensure)
(use-package which-key :ensure)
(use-package xref-js2 :ensure)
(use-package yasnippet :ensure)
(use-package yasnippet-snippets :ensure)

;;; .install.el ends here
