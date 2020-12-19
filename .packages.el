(require 'package)
;; (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)
;; (package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/libs/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/libs/use-package-2.4.1/")
  (require 'use-package))

(when (memq window-system '(mac ns))
  (use-package exec-path-from-shell
    :load-path "~/.emacs.d/libs/exec-path-from-shell-1.12/"
    :if (memq window-system '(mac ns))
    :ensure t
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :load-path "~/.emacs.d/libs/expand-region"
  :config (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multiple-cursors
  :load-path "~/.emacs.d/libs/multiple-cursors"
  :config
  (define-prefix-command 'mc)
  (global-set-key (kbd "C-c m") 'mc)
  (define-key mc  (kbd "a") 'mc/mark-all-like-this)
  (define-key mc  (kbd "n") 'mc/mark-next-like-this)
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click))

(use-package which-key
  :load-path "~/.emacs.d/libs/emacs-which-key"
  :defer t
  :config
  (which-key-setup-side-window-right-bottom)
  (which-key-mode))

(use-package company
  :load-path "~/.emacs.d/libs/company-mode"
  :config 
  (add-hook 'after-init-hook 'global-company-mode))

(use-package nord-theme
  :load-path "~/.emacs.d/libs/nord-emacs/"
  :config
  (add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
  (load-theme 'nord t))

(use-package s
  :load-path "~/.emacs.d/libs/s-1.12.0/")
(use-package memoize
  :load-path "~/.emacs.d/libs/memoize-1.1")
(use-package dash
  :load-path "~/.emacs.d/libs/dash-20201215.59")

(use-package spaceline
  :load-path "~/.emacs.d/libs/spaceline-2.0.1/"
  :after s
  :after memoize 
  :config
  (use-package powerline
    :load-path "~/.emacs.d/libs/powerline-2.4/")
  (use-package spaceline-config
    :config
    (spaceline-toggle-minor-modes-off)
    (spaceline-toggle-buffer-encoding-off)
    (spaceline-toggle-buffer-encoding-abbrev-off)
    (setq powerline-default-separator 'rounded)
    (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
    (spaceline-define-segment line-column
      "The current line and column numbers."
      "l:%l c:%2c")
    (spaceline-define-segment time
      "The current time."
      (format-time-string "%H:%M"))
    (spaceline-define-segment date
      "The current date."
      (format-time-string "%h %d"))
    (spaceline-toggle-time-on)
    (spaceline-emacs-theme 'date 'time)
    (use-package all-the-icons
      :load-path "~/.emacs.d/libs/all-the-icons-4.0.1/"
      :after spaceline)
    (use-package all-the-icons-ibuffer
      :load-path "~/.emacs.d/libs/all-the-icons-ibuffer-1.3.0"
      :after spaceline)
    (use-package spaceline-all-the-icons
      :load-path "~/.emacs.d/libs/spaceline-all-the-icons-1.4.0"
      :after spaceline
      :config
      (spaceline-all-the-icons-theme)
      (spaceline-all-the-icons--setup-git-ahead))))

;; (use-package projectile)

(use-package indent-guide
  :load-path "~/.emacs.d/libs/indent-guide/"
  :config
  (indent-guide-global-mode)
  ;;(set-face-background 'indent-guide-face "dimgray")
  (setq indent-guide-char "|"))

;; (use-package yasnippet
;;   :load-path "~/.emacs.d/yasnippet-snippets-0.23/"
;;   :config
;;   (setq yas-snippet-dirs
;; 	(append yas-snippet-dirs
;; 		'("~/.emacs.d/yasnippet-snippets-0.23/snippets")))
;;   (yas-global-mode 1))

(use-package drag-stuff
  :load-path "~/.emacs.d/libs/drag-stuff/"
  :config
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys))

;; Starting block for Javascript support
;; (load-file "~/.emacsti/libs/js2-mode.el")
;; (load-file "~/.emacsti/libs/s.el")
;; (load-file "~/.emacsti/libs/dash.el")
;; (load-file "~/.emacsti/libs/js2-refactor.el")
;; (load-file "~/.emacsti/libs/xref-js2.el")
;; (load-file "~/.emacsti/libs/json-snatcher-1.0.0.el")
;; (load-file "~/.emacsti/libs/json-reformat-0.0.6.el")
;; (load-file "~/.emacsti/libs/json-mode.el")

;; (load-file "~/.emacsti/libs/postip.el")
;; (load-file "~/.emacsti/libs/quickpeek.el")
;; (load-file "~/.emacsti/libs/flycheck.el")
;; (load-file "~/.emacsti/libs/flycheckcolormodeline.el")
;; (load-file "~/.emacsti/libs/flycheckpostip.el")
;; (load-file "~/.emacsti/libs/flycheckstatusemoji.el")
;; (load-file "~/.emacsti/libs/flycheckinline.el")
;; (load-file "~/.emacsti/libs/aggressiveindent.el")

;; (load-file "~/.emacsti/libs/webmode.el")
;; (load-file "~/.emacsti/libs/typescript.el")
;; (load-file "~/.emacsti/libs/rjsxmode.el")
;; (load-file "~/.emacsti/libs/tide.el")
;; (load-file "~/.emacsti/libs/importjs.el")
