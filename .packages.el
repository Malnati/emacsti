(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/use-package-2.4.1/")
  (require 'use-package))

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package expand-region
  :config (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multiple-cursors
  :config
  (define-prefix-command 'mc)
  (global-set-key (kbd "C-c m") 'mc)
  (define-key mc  (kbd "a") 'mc/mark-all-like-this)
  (define-key mc  (kbd "n") 'mc/mark-next-like-this)
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click))

(use-package which-key
  :defer t
  :config
  (which-key-setup-side-window-right-bottom)
  (which-key-mode))

(use-package company
  :config 
  (add-hook 'after-init-hook 'global-company-mode))


(use-package nord-theme
  :config
  (add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
  (load-theme 'nord t))

(use-package spaceline
  :config
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
      :after spaceline)
    (use-package all-the-icons-ibuffer
      :after spaceline)
    (use-package spaceline-all-the-icons 
      :after spaceline
      :config
      (spaceline-all-the-icons-theme)
      (spaceline-all-the-icons--setup-git-ahead))))

;; (use-package projectile)

(use-package indent-guide
  :load-path "~/.emacs.d/indent-guide/"
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
  :load-path "~/.emacs.d/drag-stuff/"
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
