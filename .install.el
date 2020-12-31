;;; packages --- .install.el
;;; Commentary:
;;; Code:

(progn
  "Setting stable and unstable Melpa's repositories.
For installing `use-package'"
  (condition-case nil
      (require 'use-package)
    (file-error
     (package-initialize)
     (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
     (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
     (package-refresh-contents)
     (package-install 'use-package)
     (require 'use-package))))

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
  (use-package all-the-icons :ensure)
  (use-package all-the-icons-ibuffer :ensure)
  (use-package avy :ensure)
  (use-package company :ensure)
  (use-package company-box :ensure)
  (use-package dap-mode :ensure)
  (use-package dash :ensure)
  (use-package drag-stuff :ensure)
  (use-package expand-region :ensure)
  (use-package flycheck :ensure)
  ;; (use-package helm :ensure)
  ;; (use-package helm-projectile :ensure)
  (use-package hydra :ensure)
  (use-package indent-guide :ensure)
  (use-package ivy :ensure)
  (use-package js2-mode :ensure)
  (use-package js2-refactor :ensure)
  (use-package json-mode :ensure)
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
  (use-package page-break-lines :ensure)
  (use-package dashboard :ensure)
  (use-package company-quickhelp :ensure))

;;; .install.el ends here
