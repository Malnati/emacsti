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

(setq use-package-always-ensure nil) ;; "Avoiding for installing from here."

(use-package all-the-icons
  :config (progn
            '(all-the-icons-ibuffer-icon-face ((t (:inherit default :height 0.2))))))

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

(use-package avy
  :delight avy
  :preface (message "Using package `avy'.")
  :init (message "Starting `avy'.")
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `avy'... "
			    (error-message-string err)))))

(use-package company
  :delight company
  :preface (message "Using package `company'.")
  :init (message "Starting `company'.")
  :config (progn
	    (setq company-minimum-prefix-length 1)
            ;; Trigger completion immediately.
            (setq company-idle-delay 0)
            ;; Number the candidates (use M-1, M-2 etc to select completions).
            (setq company-show-numbers t)
	    (add-hook 'after-init-hook 'global-company-mode)
            (add-to-list 'company-backends #'company-tabnine))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `company'... "
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

(use-package company-quickhelp
  :delight company-quickhelp
  :preface (message "Using package `company-quickhelp'.")
  :init (message "Starting `company-quickhelp'.")
  :config (progn
	    (company-quickhelp-mode))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `company-quickhelp'... "
			    (error-message-string err)))))

;; (use-package doom-themes
;;   :custom-face
;;   (cursor ((t (:background "BlanchedAlmond"))))
;;   :config
;;   ;; flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Corrects (and improves) org-mode's native fontification.
;;   (doom-themes-org-config)
;;   (load-theme 'doom-dracula t)
;;   (defun switch-theme ()
;;     "An interactive funtion to switch themes."
;;     (interactive)
;;     (disable-theme (intern (car (mapcar #'symbol-name custom-enabled-themes))))
;;     (call-interactively #'load-theme)))

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :config (progn
	    "modeline configurations."
	    (setq doom-modeline-height 1)
	    (set-face-attribute 'mode-line nil :height 90))
  )

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
;;	    (setq projectile-completion-system 'ivy)
	    (setq projectile-sort-order 'recentf)
	    (setq projectile-project-search-path '("~/git/" "~/lab/" "~/hub/")))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `projectile'... "
			    (error-message-string err)))))

(use-package treemacs-projectile
  :delight treemacs-projectile
  :preface (message "Using package `treemacs-projectile'.")
  :init (message "Starting `treemacs-projectile'.")
  :after treemacs
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `treemacs-projectile'... "
			    (error-message-string err)))))

(use-package yasnippet
  :delight yasnippet
  :preface (message "Using package `yasnippet'.")
  :init (message "Starting `yasnippet'.")
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
			    '("~/.emacs.d/elpa/mswin/yasnippets"))))
	    (when (member system-type '(gnu/linux gnu x))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/elpa/linux/yasnippets")))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/elpa/linux/snippets")))))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `yasnippet-snippets'... "
			    (error-message-string err)))))

(use-package dashboard
  :demand
  :diminish (dashboard-mode page-break-lines-mode)
  :custom
  (dashboard-banner-logo-title "Malnati's Emacs configuration.")
  (dashboard-startup-banner (expand-file-name "emacs.png" user-emacs-directory))
  (initial-buffer-choice (lambda () (get-buffer dashboard-buffer-name)))
  (dashboard-set-heading-icons t)
  (dashboard-set-navigator t)
  :custom-face
  (dashboard-banner-logo-title ((t (:family "Love LetterTW" :height 123))))
  :config
  (setq dashboard-items '((recents  . 5)
				    (bookmarks . 5)
				    (projects . 10)))
  (setq dashboard-center-content t)
  (dashboard-modify-heading-icons '((recents . "file-text")
                                    (bookmarks . "book")))
  (dashboard-setup-startup-hook)
  ;; Open Dashboard function
  (defun open-dashboard ()
    "Open the *dashboard* buffer and jump to the first widget."
    (interactive)
    (if (get-buffer dashboard-buffer-name)
        (kill-buffer dashboard-buffer-name))
    (dashboard-insert-startupify-lists)
    (switch-to-buffer dashboard-buffer-name)
    (goto-char (point-min))
    (delete-other-windows)))

(use-package flycheck
  :hook ((prog-mode markdown-mode js-mode) . flycheck-mode)
  :custom (progn
	    "Customizations for flycheck package."
	    (flycheck-global-modes
	     '(not text-mode outline-mode fundamental-mode org-mode
		   diff-mode shell-mode eshell-mode term-mode))
	    (flycheck-emacs-lisp-load-path 'inherit)
            
	    ;; (flycheck-indication-mode 'right-fringe)
            (setq-default flycheck-temp-prefix ".flycheck")
            )
  :init  (message "Initializing `Flycheck")
  :config (progn
	    "Flycheck pos-loading configurations."
	    (when (fboundp 'define-fringe-bitmap)
	      (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
	        [16 48 112 240 112 48 16] nil nil 'center))
            (flycheck-add-mode 'javascript-eslint 'js-mode)
            (flycheck-add-mode 'typescript-tslint 'rjsx-mode)
            (setq-default flycheck-disabled-checkers
                          (append flycheck-disabled-checkers
                                  '(json-jsonlist)))
            (add-hook 'after-init-hook #'global-flycheck-mode)
            (defun parse-prettier-warning (warning)
              (flycheck-error-new
               :line (1+ (cdr (assoc 'line warning)))
               :column (1+ (cdr (assoc 'column warning)))
               :message (cdr (assoc 'message warning))
               :level 'error
               :buffer (current-buffer)
               :checker prettier-prettify))

            (defun prettier-error-parser (output checker buffer)
              (mapcar 'parse-prettier-warning
                      (cdr (assoc 'warnings (aref (json-read-from-string output) 0)))))

            (flycheck-define-checker prettier-prettify
              "A JavaScript syntax and style checker based on JSLinter."
              :command ("prettier" "--write" source)
              :error-parser prettier-error-parser
              :modes (web-mode js-mode js2-mode js3-mode))))

(use-package flycheck-posframe
  :custom-face (flycheck-posframe-border-face ((t (:inherit default))))
  :hook (flycheck-mode . flycheck-posframe-mode)
  :custom
  (flycheck-posframe-border-width 1)
  (flycheck-posframe-inhibit-functions
   '((lambda (&rest _) (bound-and-true-p company-backend)))))

(use-package flycheck-pos-tip
  :defines flycheck-pos-tip-timeout
  :hook (flycheck-mode . flycheck-pos-tip-mode)
  :custom (flycheck-pos-tip-timeout 30))

(use-package web-mode
  :preface (message "Using package `web-mode'.")
  :init (message "Starting `web-mode'.")
  :hook ((web-mode . prettier-mode)
         (js-mode . web-mode))
  :config (progn
            (setq web-mode-content-types-alist
                  '(("json" . ".*\\.json\\'")
                    ("xml"  . ".*\\.xml\\'")
                    ("jsx"  . ".*\\.js[x]?\\'")))))

(use-package js2-mode
  :delight js2-mode
  :preface (message "Using package `js2-mode'.")
  :init (message "Starting `js2-mode'.")
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))
	    (add-to-list 'auto-mode-alist '("\\.ts\\'"   . js2-mode)))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `js2-mode'... "
			    (error-message-string err)))))

(use-package js2-refactor
  :delight js2-refactor
  :preface (message "Using package `dashboard'.")
  :init (message "Starting `dashboard'.")
  :after js2-mode
  :config (progn
            (add-hook 'js2-mode-hook #'js2-refactor-mode)
            (setq js2-skip-preprocessor-directives t))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `js2-refactor'... "
			    (error-message-string err)))))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :commands (typescript-mode))

(use-package prettier
  :config (progn
            (setq prettier-inline-errors-flag t)
            (setq prettier-js-args '(
                                     "--trailing-comma" "all"
                                     "--bracket-spacing" "false"
                                     )))
  :hook ((typescript-mode . prettier-mode)
         (web-mode . prettier-mode)
         (js-mode . prettier-mode)))

(use-package nord-theme
  :preface (message "Using package `nord'.")
  :init (message "Starting `nord'.")
  :config (progn
            (load-theme 'nord t)))

;; (when (member system-type '(gnu/linux gnu x))
;;   (use-package xref-js2
;;     :delight xref-js2
;;     :preface (message "Using package `xref-js2'.")
;;     :init (message "Starting `xref-js2'.")
;;     :after js2-mode
;;     :config (progn
;; 	      (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))
;;     :catch (lambda (keyword err)
;; 	     (message (concat "Error during loading of `xref-js2'... "
;; 			      (error-message-string err))))))

;; https://gitlab.com/skybert/my-little-friends/blob/master/emacs/.emacs
(use-package lsp-mode
  :preface (message "Using package `lsp-mode'.")
  :init (message "Starting `lsp-mode' as stand by.")
  :commands lsp
  ;; :hook ((js2-mode web-mode lsp-enable-which-key-integration) . lsp)
  :config (progn
	    (setq lsp-completion-enable-additional-text-edit nil)))

(use-package lsp-java
  :preface (message "Using package `lsp-java'.")
  :init (message "Starting `lsp-java' as stand by.")
  :config (progn
            ;; (add-to-list 'auto-mode-alist '("\\.java\\'"   . java-mode))
	    ;; (add-hook 'java-mode-hook 'lsp)
            ))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-show-hover nil)
;;  (setq lsp-ui-doc-position 'bottom)
;;  (lsp-ui-doc-show)
  )

(use-package dap-mode
  :after lsp-mode
  :preface (message "Using package `dap-mode'.")
  :init (message "Starting `dap-mode' as stand by.")
  :config (progn
	    (dap-auto-configure-mode)
	    (dap-mode t)
	    (dap-ui-mode t)
	    (dap-tooltip-mode 1)
	    (tooltip-mode 1)
            ;;(dap-node-setup 1)
	    (dap-register-debug-template
	     "mvnw compile quarkus:dev"
	     (list :type "java"
		   :request "attach"
		   :hostName "localhost"
		   :port 5005))
            (add-hook 'dap-stopped-hook
		      (lambda (arg) (call-interactively #'dap-hydra)))))

(use-package dap-java
  :preface (message "Using package `dap-java'.")
  :init (message "Starting `dap-java' as stand by.")
  :after lsp-java
  :config (progn
	    (global-set-key (kbd "<f7>") 'dap-step-in)
	    (global-set-key (kbd "<f8>") 'dap-next)
	    (global-set-key (kbd "<f9>") 'dap-continue)))

(use-package yaml-mode
  :preface (message "Using package `yaml-java'.")
  :init (message "Starting `yaml-java' as stand by.")
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))))
;;; .config.el ends here
