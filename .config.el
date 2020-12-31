;;; .config --- Setup packages

;; Copyright (C) 2020 Ricardo Malnati Rosa Lima

;; Author: Ricardo Malanti <ricardomalnati@gmail.com>
;; Maintainer: Ricardo Malanti <ricardomalnati@gmail.com>
;; Created: Dez 2020
;; Keywords: evironment
;; Version: 1.0
;; URL: https://github.com/Malnati

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This library implements a set of configurations and preferencies.

;;; Code:

(progn
  "Avoiding for installing packages here."
  (setq use-package-always-ensure nil))
  

(use-package dashboard
  :delight dashboard
  :preface (message "Using package `dashboard'.")
  :init (message "Starting `dashboard'.")
  :config (progn
	    "Settings for `dashboard'"
	    (message "Configuring `dashboard'.")
	    (dashboard-setup-startup-hook)
	    (setq dashboard-center-content t)
	    (setq dashboard-items '((recents  . 5)
				    (bookmarks . 5)
				    (projects . 5)
				    (registers . 5)))
	    (setq dashboard-set-heading-icons t)
	    (setq dashboard-set-file-icons t)
	    (setq dashboard-set-navigator t))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `dashboard'... "
			    (error-message-string err)))))

(when (member system-type '(ns darwin))
  (use-package exec-path-from-shell
    :delight
    :preface (message "Using package `exec-path-from-shell'.")
    :init (message "Starting `exec-path-from-shell'.")
    :config (progn
	      (exec-path-from-shell-initialize))
    :catch (lambda (keyword err)
	     (message (concat "Error during loading of `exec-path-from-shell'... "
			      (error-message-string err))))))

(use-package expand-region
  :delight
  :preface (message "Using package `expand-region'.")
  :init (message "Starting `expand-region'.")
  :config (progn
	    (global-set-key (kbd "C-=") 'er/expand-region))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `expand-region'... "
			    (error-message-string err)))))

(use-package multiple-cursors
  :delight "MagnarS Multiple Cursors"
  :preface (message "Using package `multiple-cursors'.")
  :init (message "Starting `multiple-cursors'.")
  :config (progn
	    (define-prefix-command 'mc)
	    (global-set-key (kbd "C-c m") 'mc)
	    (define-key mc  (kbd "a") 'mc/mark-all-like-this)
	    (define-key mc  (kbd "n") 'mc/mark-next-like-this)
	    (define-key mc  (kbd "p") 'mc/mark-previous-like-this)
	    (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `multiple-cursors'... "
			    (error-message-string err)))))

(use-package ivy
  :delight ivy
  :preface (message "Using package `ivy'.")
  :init (message "Starting `ivy'.")
  :after hydra
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `ivy'... "
			    (error-message-string err)))))

;; TODO move bind to which-key
(use-package avy
  :delight avy
  :preface (message "Using package `avy'.")
  :init (message "Starting `avy'.")
  :bind ("M-s" . avy-goto-char)
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `avy'... "
			    (error-message-string err)))))

(use-package which-key
  :delight whych-key
  :preface (message "Using package `which-key'.")
  :init (progn
	  "Defaul settings for which-key mode."
	  (message "Starting `which-key'.")
	  (which-key-mode)
	  (which-key-setup-side-window-right-bottom)
	  ;; max width of which-key window, when displayed at left or right.
	  ;; valid values: number of columns (integer), or percentage out of current
	  ;; frame's width (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-width 0.4)
	  ;; max height of which-key window, when displayed at top or bottom.
	  ;; valid values: number of lines (integer), or percentage out of current
	  ;; frame's height (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-height 0.25))
  :config  (progn
	     "Keytrokes settings" 
	     (progn 
	       "Keytrokes definitions"
	       (global-set-key (kbd "C-c c") 'copy-line)
	       (global-set-key (kbd "C-c d") 'duplicate-line)
	       (global-set-key (kbd "C-c e b") 'eval-buffer)
	       (global-set-key (kbd "C-c e r") 'eval-region)
	       (global-set-key (kbd "C-c f i") 'indent-region)
	       (global-set-key (kbd "C-c m l") 'select-line)
	       (global-set-key (kbd "C-z")   'undo)
	       (global-set-key [(control shift meta up)]   'text-scale-increase)
	       (global-set-key [(control shift meta down)] 'text-scale-decrease)
	       (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
	       (eval-after-load 'company
		 '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))
	       (drag-stuff-define-keys)
	       (global-set-key [(meta up)]   'drag-stuff-up)
	       (global-set-key (kbd "M-x") 'helm-M-x)
	       (global-set-key [(meta down)] 'drag-stuff-down)
	       (define-prefix-command 'js2-keys)
	       (global-set-key (kbd "C-c C-j") 'js2-keys)
	       ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "p") 'json-mode-show-path)
	       ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "P") 'json-mode-kill-path)
	       (progn
		 "xref-js2 keytrokes definitions"
		 (define-prefix-command 'xref-js2)
		 (global-set-key (kbd "C-c x") 'xref-js2)
		 (define-key xref-js2 (kbd "a")   'js2-mode-show-all) 
		 (define-key xref-js2 (kbd "g")   'xref-revert-buffer) 
		 (define-key xref-js2 (kbd "j")   'js2-jump-to-definition) 
		 (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point) 
		 (define-key xref-js2 (kbd "s")   'js2-mode-show-element)
		 )
	       )
	     (progn 
	       "Keytrokes descriptions"
	       (which-key-add-key-based-replacements "C-c c" "copy line")
	       (which-key-add-key-based-replacements "C-c d" "duplicate line")
	       (which-key-add-key-based-replacements "C-c e" "eval")
	       (which-key-add-key-based-replacements "C-c e b" "eval buffer")
	       (which-key-add-key-based-replacements "C-c e r" "eval region")
	       (which-key-add-key-based-replacements "C-c f" "format")
	       (which-key-add-key-based-replacements "C-c f i" "indent region")
	       (which-key-add-key-based-replacements "C-c p" "project")
	       (which-key-add-key-based-replacements "C-c m" "mark")
	       (which-key-add-key-based-replacements "C-c m l" "mark line")
	       (which-key-add-key-based-replacements "C-z" "undo") ))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `which-key'... "
			    (error-message-string err)))))

(use-package company
  :delight company
  :preface (message "Using package `company'.")
  :init (message "Starting `company'.")
  :config (progn
	    (setq company-minimum-prefix-length 1 company-idle-delay 0.0)
	    (add-hook 'after-init-hook 'global-company-mode))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `company'... "
			    (error-message-string err)))))

(use-package treemacs-projectile
  :delight treemacs-projectile
  :preface (message "Using package `treemacs-projectile'.")
  :init (message "Starting `treemacs-projectile'.")
  :after treemacs
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `treemacs-projectile'... "
			    (error-message-string err)))))

(use-package company-box
  :delight company-box
  :preface (message "Using package `company-box'.")
  :init (message "Starting `company-box'.")
  :after company-mode 
  :hook (company-mode . company-box-mode)  
  :config (progn
	    (setq company-box-icons-unknown 'fa_question_circle)
	    (setq company-box-icons-elisp
		  '((fa_tag :face font-lock-function-name-face) ;; Function
		    (fa_cog :face font-lock-variable-name-face) ;; Variable
		    (fa_cube :face font-lock-constant-face) ;; Feature
		    (md_color_lens :face font-lock-doc-face))) ;; Face
	    (setq company-box-icons-yasnippet 'fa_bookmark))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `company-box'... "
			    (error-message-string err)))))

;; TODO FIX
(use-package company-quickhelp
  :delight company-quickhelp
  :preface (message "Using package `company-quickhelp'.")
  :init (message "Starting `company-quickhelp'.")
  :config (progn
	    (company-quickhelp-mode)
	    )
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `company-quickhelp'... "
			    (error-message-string err)))))

(use-package nord-theme
  :delight nord-theme
  :preface (message "Using package `nord-theme'.")
  :init (message "Starting `nord-theme'.")
  :config (progn
	    (add-to-list 'custom-theme-load-path
			 (expand-file-name "~/.emacs.d/themes/"))
	    (load-theme 'nord t))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `nord-theme'... "
			    (error-message-string err)))))

(use-package indent-guide
  :delight indent-guide
  :preface (message "Using package `indent-guide'.")
  :init (message "Starting `indent-guide'.")
  :config (progn
	    (indent-guide-global-mode)
	    (setq indent-guide-char "|"))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `indent-guide'... "
			    (error-message-string err)))))

(use-package drag-stuff
  :delight drag-stuff
  :preface (message "Using package `drag-stuff'.")
  :init (message "Starting `drag-stuff'.")
  :config (progn
	    (drag-stuff-global-mode 1))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `drag-stuff'... "
			    (error-message-string err)))))

(use-package projectile
  :delight projectile
  :preface (message "Using package `projectile'.")
  :init (message "Starting `projectile'.")
  :delight '(:eval (concat " " (projectile-project-name)))
  :config (progn
	    (projectile-mode +1)
	    (setq projectile-sort-order 'recentf))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `projectile'... "
			    (error-message-string err)))))

(use-package yasnippet
  :delight yasnippet
  :preface (message "Using package `dashboard'.")
  :init (message "Starting `dashboard'.")
  :config (progn
	    (yas-reload-all)
	    (add-hook 'prog-mode-hook #'yas-minor-mode)
	    (yas-global-mode 1))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `yasnippet'... "
			    (error-message-string err)))))

(use-package yasnippet-snippets
  :delight yasnippet-snippets
  :preface (message "Using package `yasnippet-snippets'.")
  :init (message "Starting `yasnippet-snippets'.")
  :after yasnippet
  :config (progn
	    (when (member system-type '(pc w32 ms-dos windows-nt cygwin))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-mswin/yasnippet-snippets-20201221.849/snippets"))))
	    (when (member system-type '(gnu/linux gnu x))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-linux/yasnippet-classic-snippets-1.0.2")))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-linux/snippet-20130210.2315")))))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `yasnippet-snippets'... "
			    (error-message-string err)))))

(use-package flycheck
  :delight flycheck
  :preface (message "Using package `flycheck'.")
  :init (message "Starting `flycheck'.")
  :config (progn
	    (flycheck-mode t)
	    (setq global-flycheck-mode t))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `flycheck'... "
			    (error-message-string err)))))

(progn
  (defun helm-buffer-face-mode ()
    "Helm buffer face"
    (interactive)
    (with-helm-buffer
      (setq line-spacing 2)
      (buffer-face-set '(:height 87))))
  (use-package helm
    :delight helm
    :preface (message "Using package `helm'.")
    :init (message "Starting `helm'.")
    :config (progn
	      (add-hook 'helm-update-hook 'helm-buffer-face-mode))
    :catch (lambda (keyword err)
	     (message (concat "Error during loading of `helm'... "
			      (error-message-string err))))))

(use-package helm-projectile
  :delight helm-projectile
  :preface (message "Using package `helm-projectile'.")
  :init (message "Starting `helm-projectile'.")
  :config (progn
	    (helm-projectile-on))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `helm-projectile'... "
			    (error-message-string err)))))

(use-package js2-mode
  :delight js2-mode
  :preface (message "Using package `js2-mode'.")
  :init (message "Starting `js2-mode'.")
  :config (progn
	    (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
	    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode)))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `js2-mode'... "
			    (error-message-string err)))))

(use-package js2-refactor
  :delight js2-refactor
  :preface (message "Using package `dashboard'.")
  :init (message "Starting `dashboard'.")
  :after js2-mode
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `js2-refactor'... "
			    (error-message-string err)))))

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2
    :delight xref-js2
    :preface (message "Using package `xref-js2'.")
    :init (message "Starting `xref-js2'.")
    :after js2-mode
    :config (progn
	      (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))
    :catch (lambda (keyword err)
	     (message (concat "Error during loading of `xref-js2'... "
			      (error-message-string err))))))

(use-package json-mode
  :delight json-mode
  :preface (message "Using package `json-mode'.")
  :init (message "Starting `json-mode'.")
  :after js2-mode  
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.json\\'"   . json-mode)))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `json-mode'... "
			    (error-message-string err)))))

(progn
  "Pos-tip Clippy settings"
  (load-file "~/.emacs.d/clippy.el"))

;;; .config.el ends here
