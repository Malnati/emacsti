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
    :ensure t
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :ensure
  :config (global-set-key (kbd "C-=") 'er/expand-region))

(use-package multiple-cursors
  :ensure
  :config
  (define-prefix-command 'mc)
  (global-set-key (kbd "C-c m") 'mc)
  (define-key mc  (kbd "a") 'mc/mark-all-like-this)
  (define-key mc  (kbd "n") 'mc/mark-next-like-this)
  (define-key mc  (kbd "p") 'mc/mark-previous-like-this)
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click))

(use-package hydra
  :ensure
  )

(use-package ivy
  :after hydra
  :ensure
  )

(use-package avy
  :ensure
  :init
  :bind ("M-s" . avy-goto-char))

(use-package which-key
  :ensure
  :config
  (which-key-setup-side-window-right-bottom)
  (which-key-mode))

(use-package company
  :ensure
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package nord-theme
  :ensure
  :config
  (add-to-list 'custom-theme-load-path
	       (expand-file-name "~/.emacs.d/themes/"))
  (load-theme 'nord t))

(use-package s
  :ensure)

(use-package memoize
  :ensure)

(use-package dash
  :ensure)

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
  :config
  (indent-guide-global-mode)
  (setq indent-guide-char "|"))

(use-package drag-stuff
  :ensure
  :config
  (progn
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys)
  (global-set-key [(meta up)]   'drag-stuff-up)
  (global-set-key [(meta down)] 'drag-stuff-down)))

(use-package projectile
  :config
  (progn
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-sort-order 'recentf)))

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
  (progn
    (define-prefix-command 'js2-keys)
    (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))))

(use-package js2-refactor
  :after js2-mode)

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2
    :config
    (progn
        (define-prefix-command 'xref-js2)
	(global-set-key (kbd "C-c x") 'xref-js2)
        (define-key xref-js2 (kbd "a") 'js2-mode-show-all)
        (define-key xref-js2 (kbd "e") 'js2-mode-hide-element)
        (define-key xref-js2 (kbd "f") 'js2-mode-toggle-hide-functions)
        (define-key xref-js2 (kbd "j") 'js2-jump-to-definition)
        (define-key xref-js2 (kbd "o") 'js2-mode-toggle-element)
        (define-key xref-js2 (kbd "s") 'js2-mode-show-element)
        (define-key xref-js2 (kbd "t") 'js2-mode-toggle-hide-comments)
        (define-key xref-js2 (kbd "w") 'js2-mode-toggle-warnings-and-errors)
        ;;(define-key xref-js2 [remap indent-new-comment-line] #'js2-line-break)
        ;;(define-key xref-js2 [down-mouse-3] #'js2-down-mouse-3)
	(add-hook 'js2-mode-hook (lambda ()
				   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))))

(define-key xref-kbd (js2 "n")  'xref-next-line)
(define-key xref-js2 (kbd "p")  'xref-prev-line)
(define-key xref-js2 (kbd "N")  'xref-next-group)
(define-key xref-js2 (kbd "P")  'xref-prev-group)
(define-key xref-js2 (kbd "r")  'xref-query-replace-in-results)
(define-key xref-js2 (kbd "RET" 'xref-goto-xref)
(define-key xref-js2 (kbd "TAB" 'xref-quit-and-goto-xref)
(define-key xref-js2 (kbd "C-o" 'xref-show-location-at-point)
(define-key xref-js2 (kbd ".")  'xref-next-line)
(define-key xref-js2 (kbd ",")  'xref-prev-line)
(define-key xref-js2 (kbd "g")  'xref-revert-buffer)

(use-package json-mode
  :after js2-mode
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.json\\'"   . json-mode))
    (global-set-key (kbd "C-c j") 'js2-keys)
    (define-key js2-keys (kbd "f") 'json-mode-beautify) ;; format the region/buffer with json-reformat (https://github.com/gongo/json-reformat)
    (define-key js2-keys (kbd "p") 'json-mode-show-path) ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
    (define-key js2-keys (kbd "P") 'json-mode-kill-path) ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
    (define-key js2-keys (kbd "t") 'json-toggle-boolean) ;; Toggle between true and false at point
    (define-key js2-keys (kbd "k") 'json-nullify-sexp) ;; sexp Replace the at point with null
    (define-key js2-keys (kbd "i") 'json-increment-number-at-point) ;; Increment the number at point
    (define-key js2-keys (kbd "d") 'json-decrement-number-at-point) ;; Decrement the number at point
    ))

;; Starting block for Javascript support
;; (load-file "~/.emacsti/libs/xref-js2.el")

;; (load-file "~/.emacsti/libs/json-snatcher-1.0.0.el")
;; (load-file "~/.emacsti/libs/json-reformat-0.0.6.el")

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
