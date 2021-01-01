;;; packages --- .install.el
;;; Commentary:
;;;

(progn
  "Setting stable and unstable Melpa's repositories.
For installing `use-package'"
  (setq custom-file "~/.emacs.d/.emacs-save-options.el")
  (package-initialize)
  (condition-case nil
      (require 'use-package)
    (file-error
     (progn
       "Initializing setup for one time installing...
        It will install `use-pachage' for providing the listed packages."
       (package-initialize)
       (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
       (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
       (package-refresh-contents)
       (package-install 'use-package)
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
		     (exec-path-from-shell-initialize))
	   :catch (lambda (keyword err)
		    (message (concat "Error during loading of `exec-path-from-shell'... "
				     (error-message-string err)))))
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
	   (use-package dap-mode)
	   (use-package drag-stuff)
	   (use-package expand-region)
	   (use-package flycheck)
	   (use-package helm)
	   (use-package helm-projectile :after helm)
	   (use-package hydra)
	   (use-package indent-guide)
	   (use-package ivy)
	   (use-package js2-mode)
	   (use-package js2-refactor :after js2-mode)
	   (use-package json-mode :after js2-mode)
	   (use-package memoize)
	   (use-package multiple-cursors :after dash)
	   (use-package nord-theme)
	   (use-package projectile)
	   (use-package treemacs)
	   (use-package treemacs-projectile :after treemacs)
	   (use-package which-key)
	   (use-package xref-js2 :after js2-mode)
	   (use-package yasnippet)
	   (use-package yasnippet-snippets :after yasnippet)
	   (use-package auto-yasnippet :after yasnippet)
	   (use-package page-break-lines)
	   (use-package dashboard)
	   (use-package smart-mode-line)
	   (progn
	     "Loading clippy from path." 
	     (message "Loading `clippy'...")
	     (load-file "~/.emacs.d/clippy/clippy.el"))
	   (setq use-package-always-ensure nil)))))))

;;; .install.el ends here
