;;; packages --- .install.el
;;; Commentary:
;;;

(progn
  "Setting stable and unstable Melpa's repositories.
For installing `use-package'"
  (progn
    "Initializing setup for one time installing...
        It will install `use-pachage' for providing the listed packages."
    (setq warning-minimum-level :emergency)
    (require 'use-package)
    (require 'use-package-ensure)
    (progn
      "Setting the packages for installing by `use-package'"
      (package-refresh-contents)
      (setq use-package-always-ensure t)
      (use-package exec-path-from-shell
        :if (member system-type '(ns darwin))
        :preface (message "Using package `exec-path-from-shell'.")
        :init (message "Starting `exec-path-from-shell'.")
        :config (progn
                  (exec-path-from-shell-initialize)))
      (progn
        "Set of packages for downloading and installing."
        (use-package s)
        (use-package dash)
        (use-package all-the-icons)
        (use-package all-the-icons-ibuffer :after all-the-icons)
        (use-package avy)
        (use-package company)
        (use-package company-box :after company)
        (use-package company-quickhelp :after company)
        (use-package company-tabnine :after company)
        (use-package dap-mode)
        (use-package drag-stuff)
        (use-package expand-region)
        (use-package flycheck)
        (use-package flycheck-grammarly)
        (use-package flycheck-pos-tip)
        (use-package flycheck-posframe)
        (use-package hydra)
        (use-package indent-guide)
        (use-package ivy)
        (use-package prettier)
        (use-package js2-mode)
        (use-package js2-refactor :after js2-mode)
        (use-package typescript-mode)
        (use-package tide :after typescript-mode)
        (use-package web-mode)
        (use-package memoize)
        (use-package multiple-cursors :after dash)
        (use-package nord-theme)
        (use-package projectile)
        (use-package treemacs)
        (use-package treemacs-projectile :after treemacs)
        (use-package which-key)
        ;; (use-package xref-js2 :after js2-mode) 
        (use-package yasnippet)
        (use-package yasnippet-snippets :after yasnippet)
        (use-package auto-yasnippet :after yasnippet)
        (use-package page-break-lines)
        (use-package dashboard)
        (use-package smart-mode-line)
        (use-package doom-themes)
        (use-package doom-modeline)
        (use-package lsp-mode)
        (use-package lsp-ui :after lsp-mode)
        (use-package lsp-java :after lsp-mode)
        (use-package dap-java :after lsp-java)
        (use-package yaml-mode))))
          (progn
            "Loading clippy from path."
            (message "Loading `clippy'...")
            (load-file "~/.emacs.d/clippy/clippy.el"))
          (setq use-package-always-ensure nil)
          (setq warning-minimum-level :warning))

;;; .install.el ends here
