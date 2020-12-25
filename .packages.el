;; https://www.gnu.org/software/emacs/manual/html_node/elisp/System-Environment.html
;; Variable: system-type
;;
;; The value of this variable is a symbol indicating the type of
;;  operating system Emacs is running on. The possible values are:
;;
;; ‘aix’           IBM’s AIX.
;; ‘berkeley-unix’ Berkeley BSD and its variants.
;; ‘cygwin’        Cygwin, a POSIX layer on top of MS-Windows.
;; ‘darwin’        Darwin (macOS).
;; ‘gnu’           The GNU system (using the GNU kernel, which consists of the HURD and Mach).
;; ‘gnu/linux’     A GNU/Linux system—that is, a variant GNU system, using the Linux kernel.
;;               (These systems are the ones people often call “Linux”, but actually Linux is just the kernel, not the whole system.)
;; ‘gnu/kfreebsd’  A GNU (glibc-based) system with a FreeBSD kernel.
;; ‘hpux’          Hewlett-Packard HPUX operating system.
;; ‘nacl’          Google Native Client (NaCl) sandboxing system.
;; ‘ms-dos’        Microsoft’s DOS. Emacs compiled with DJGPP for MS-DOS binds system-type to ms-dos even when you run it on MS-Windows.
;; ‘usg-unix-v’    AT&T Unix System V.
;; ‘windows-nt’    Microsoft Windows NT, 9X and later. The value of system-type is always windows-nt, e.g., even on Windows 10.
;; ‘x’           for an Emacs frame that is really an X window,
;; ‘w32’         for an Emacs frame that is a window on MS-Windows display,
;; ‘pc’          for a direct-write MS-DOS frame.
;; ‘ns’          for an Emacs frame on a GNUstep or Macintosh Cocoa display,

;; Location of the package archive.
(when (member window-system
	       '(pc w32 ms-dos windows-nt cygwin))
  (setq package-user-dir "~/.emacs.d/libs/elpa-mswin")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-mswin"))

(when (member system-type
	       '(ns darwin))
  (setq package-user-dir "~/.emacs.d/libs/elpa-macos")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-macos"))

(when (member system-type '(gnu/linux gnu x))
  (setq package-user-dir "~/.emacs.d/libs/elpa-linux")
  (message "package-user-dir is ~/.emacs.d/libs/elpa-linux"))

(require 'package)
(package-initialize)

;; (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
;; (package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/libs/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/libs/use-package-2.4.1/")
  (require 'use-package))

(when (member window-system '(ns darwin))
  (use-package exec-path-from-shell
    :ensure
    ;; :load-path "~/.emacs.d/libs/exec-path-from-shell-1.12/"
    :if (member window-system '(ns darwin))
    :ensure t
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :ensure
  ;; :load-path "~/.emacs.d/libs/expand-region"
  :config (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multiple-cursors
  :ensure
  ;; :load-path "~/.emacs.d/libs/multiple-cursors"
  :config
  (define-prefix-command 'mc)
  (global-set-key (kbd "C-c m") 'mc)
  (define-key mc  (kbd "a") 'mc/mark-all-like-this)
  (define-key mc  (kbd "n") 'mc/mark-next-like-this)
  (define-key mc  (kbd "p") 'mc/mark-previous-like-this)
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click))

(use-package hydra
  :ensure ;; :load-path "~/.emacs.d/libs/hydra-0.14.0"
  )

(use-package ivy
  :after hydra
  :ensure
  ;; :load-path "~/.emacs.d/libs/ivy-0.13.1"
  )

(use-package avy
  :ensure
  ;; :load-path "~/.emacs.d/avy-0.5.0/avy-autoloads.el"
  :init
  :bind ("M-s" . avy-goto-char))

(use-package which-key
  :ensure
  ;; :load-path "~/.emacs.d/libs/emacs-which-key"
  :config
  (which-key-setup-side-window-right-bottom)
  (which-key-mode))

(use-package company
  :ensure
  ;; :load-path "~/.emacs.d/libs/company-mode"
  :config 
  (add-hook 'after-init-hook 'global-company-mode))

(use-package nord-theme
  :ensure
  ;; :load-path "~/.emacs.d/libs/nord-emacs/"
  :config
  (add-to-list 'custom-theme-load-path
	       (expand-file-name "~/.emacs.d/themes/"))
  (load-theme 'nord t))

(use-package s
  :ensure
  ;; :load-path "~/.emacs.d/libs/s-1.12.0/"
  )

(use-package memoize
  :ensure
  ;; :load-path "~/.emacs.d/libs/memoize-1.1"
  )

(use-package dash
  :ensure
  ;; :load-path "~/.emacs.d/libs/dash-20201215.59"
  )

(use-package spaceline
  :ensure
  :after s
  :after memoize 
  :config
  (use-package powerline
    :ensure)  
  (use-package spaceline-config
    :config
    (spaceline-toggle-buffer-modified-on)
    (spaceline-toggle-line-column-on)
    (spaceline-toggle-minor-modes-off)
    (spaceline-toggle-buffer-encoding-off)
    (spaceline-toggle-buffer-encoding-abbrev-off)
    (setq powerline-default-separator 'rounded)
    (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
    (spaceline-define-segment line-column "The current line and column numbers." "l:%l c:%2c")
    (spaceline-define-segment time "The current time." (format-time-string "%H:%M"))
    (spaceline-define-segment date "The current date." (format-time-string "%h %d"))
    (spaceline-toggle-time-on)
    (spaceline-emacs-theme 'date 'time)
    (use-package all-the-icons
      :ensure
      :after spaceline)
    (use-package all-the-icons-ibuffer
      :ensure
      :after spaceline)
    (use-package spaceline-all-the-icons
      :ensure
      :after spaceline
      :config
      (spaceline-all-the-icons-theme)
      (spaceline-all-the-icons--setup-git-ahead))))

(use-package indent-guide
  :ensure
  ;; :load-path "~/.emacs.d/libs/indent-guide/"
  :config
  (indent-guide-global-mode)
  (setq indent-guide-char "|"))

(use-package drag-stuff
  :ensure
  ;; :load-path "~/.emacs.d/libs/drag-stuff/"
  :config
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys))

(use-package projectile
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-project-search-path '("~/.emacs.d/"))
  (setq projectile-sort-order 'recentf))

(use-package yasnippet
  :config
  (progn
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode)
  (yas-global-mode 1)))

(use-package yasnippet-snippets
  :after yasnippet
  :config
  (progn
    (when (member window-system '(pc w32 ms-dos windows-nt cygwin))
      (setq yas-snippet-dirs
	    (append yas-snippet-dirs '("~/.emacs.d/libs/elpa-mswin/yasnippet-snippets-20201221.849/snippets"))))
    (when (member system-type '(gnu/linux gnu x))
      (setq yas-snippet-dirs
	    (append yas-snippet-dirs '("~/.emacs.d/libs/elpa-linux/yasnippet-classic-snippets-1.0.2")))
      (setq yas-snippet-dirs
            (append yas-snippet-dirs '("~/.emacs.d/libs/elpa-linux/snippet-20130210.2315"))))))

(use-package flycheck
  :config
  (flycheck-mode t)
  (setq global-flycheck-mode t))

(use-package js2-mode
  :config
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'"  . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.rjsx\\'" . js2-mode)))

(use-package js2-refactor
  :after js2-mode)

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2
    :config
    (progn
      (define-key js2-mode-map (kbd "M-.") nil)
      (add-hook 'js2-mode-hook (lambda ()
				 (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))))
;; (use-package js2-highlight-vars
;;   :config
;;   (js2-highlight-vars-mode t)
;;   (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-highlight-vars-mode))
;;   (add-to-list 'auto-mode-alist '("\\.jsx\\'"  . js2-highlight-vars-mode))
;;   (add-to-list 'auto-mode-alist '("\\.rjsx\\'" . js2-highlight-vars-mode)))

;; (defvar js2-highlight-vars-local-keymap
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "M-n")       'js2-highlight-vars-next)
;;     (define-key map (kbd "C-<down>")  'js2-highlight-vars-next)
;;     (define-key map (kbd "M-p")       'js2-highlight-vars-prev)
;;     (define-key map (kbd "C-<up>")    'js2-highlight-vars-prev)
;;     (define-key map (kbd "M-r")       'js2-highlight-vars-rename)
;;     map))

;; (use-package highlight-symbol
;; :config
;; (add-hook 'prog-mode-hook 'highlight-symbol)
;; (global-set-key [(control f3)] 'highlight-symbol)
;; (global-set-key [f3] 'highlight-symbol-next)
;; (global-set-key [(shift f3)] 'highlight-symbol-prev)
;; (global-set-key [(meta f3)] 'highlight-symbol-query-replace))

;; Starting block for Javascript support
;; (load-file "~/.emacsti/libs/xref-js2.el")

;; (load-file "~/.emacsti/libs/json-snatcher-1.0.0.el")
;; (load-file "~/.emacsti/libs/json-reformat-0.0.6.el")
;; (load-file "~/.emacsti/libs/json-mode.el")

;; (load-file "~/.emacsti/libs/postip.el")
;; (load-file "~/.emacsti/libs/quickpeek.el")

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
