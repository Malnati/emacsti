(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "https://stable.elpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/use-package-2.4.1/")
  (require 'use-package))

(use-package expand-region
  :ensure t
  :config (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-c m") 'mc/mark-next-like-this))

(use-package ivy)

;; https://github.com/justbur/emacs-which-key

;; M-x package-install which-key
;; (add-to-list 'load-path "path/to/which-key.el")
;; (require 'which-key)
;; (which-key-mode)

;; https://github.com/justbur/emacs-which-key#install
(use-package which-key
  :ensure t
  :config
  ;; This is a combination of the previous two choices. It will try to use the right side, but if there is no room it will switch to using the bottom, which is usually easier to fit keys into. This setting can be helpful if the size of the Emacs frame changes frequently, which might be the case if you are using a dynamic/tiling window manager.
  (which-key-setup-side-window-right-bottom)
  (which-key-mode))

;; M-x package-install which-key-posframe
;; (use-package
;;   :load-path "path/to/which-key-posframe.el"
;;   :config
;;   (which-key-posframe-mode))

;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-center)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-top-center)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-top-left-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-top-right-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-bottom-left-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-frame-bottom-right-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-window-center)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-window-top-left-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-window-top-right-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-window-bottom-left-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-window-bottom-right-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-point-top-left-corner)
;; (setq which-key-posframe-poshandler 'posframe-poshandler-point-bottom-left-corner)

(use-package company
  :ensure t
  :config 
  (add-hook 'after-init-hook 'global-company-mode))

(use-package nord-theme
  :ensure t
  :config
  (add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
  (load-theme 'nord t))

(use-package spaceline
  :ensure t
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
    (spaceline-emacs-theme 'date 'time)))
  
(use-package all-the-icons
  :ensure t
  :after spaceline)
;; TODO run M-x all-the-icons-install-fonts if it is not

(use-package all-the-icons-ibuffer
  :ensure t
  :after spaceline)

(use-package spaceline-all-the-icons 
  :ensure t
  :after spaceline
  :config
  (spaceline-all-the-icons-theme)
  (spaceline-all-the-icons--setup-git-ahead))


;; (load-file "~/.emacsti/libs/execpathfromshell.el")
;; (load-file "~/.emacsti/libs/projectile.el")
;; (load-file "~/.emacsti/libs/indent-guide.el")
;; (load-file "~/.emacsti/libs/yasnippet.el")
;; (load-file "~/.emacsti/libs/drag-stuff.el")

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
