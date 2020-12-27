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
;;; Code:

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
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :ensure)

(use-package multiple-cursors
  :ensure)

(use-package hydra
  :ensure)

(use-package ivy
  :ensure)

(use-package avy
  :ensure)

(use-package which-key
  :ensure)

(use-package company
  :ensure)

(use-package dap-mode :ensure)

(use-package treemacs :ensure)

(use-package treemacs-projectile
  :ensure)

(use-package nord-theme
  :ensure)

(use-package s
  :ensure)

(use-package memoize
  :ensure)

(use-package dash
  :ensure)

(use-package all-the-icons
  :ensure)

(use-package all-the-icons-ibuffer
  :ensure)

(use-package company-box
  :ensure)

(use-package indent-guide
  :ensure)

(use-package drag-stuff
  :ensure)

(use-package projectile
  :ensure)

(use-package yasnippet
  :ensure)

(use-package yasnippet-snippets
  :ensure
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
  :ensure
  :config
  (flycheck-mode t)
  (setq global-flycheck-mode t))

(use-package helm
  :ensure
  :config
  (progn
    (global-set-key (kbd "M-x") 'helm-M-x)
    (global-set-key (kbd "C-x C-f") #'helm-find-files)))

(progn
  (setq lsp-keymap-prefix "M-l")

  (use-package lsp-mode
    :ensure
    :hook
    ((js2-mode . lsp-mode)
     (lsp-mode . lsp-enable-which-key-integration))
    :commands lsp
    :config (progn
	      ;; Enable/disable snippet completion support.
	      (setq lsp-enable-snippet t)
	      ;; Display all of the info returned by document/onHover.
	      ;; If this is nil, eldoc will show only the symbol information.
	      (setq lsp-eldoc-render-all t)
	      ;; Enable completion-at-point integration.
	      (setq lsp-enable-completion-at-point t)
	      ;; Specifies which package to use for diagnostics.
	      ;; Choose from :auto, :flycheck, :flymake and :none.
	      ;; Default is :auto which means use :flycheck if present and
	      ;; fallback to :flymake.
	      (setq lsp-diagnostics-provider :flycheck)
	      ;; Indent regions using the file formatting functionality provided by
	      ;; the language server.
	      (setq lsp-enable-indentation nil)
	      ;; Enable textDocument/onTypeFormatting integration.
	      (setq lsp-enable-on-type-formatting nil)
	      ;; f non-nil, lsp-mode will apply edits suggested by the language server
	      ;; before saving a document.
	      (setq lsp-before-save-edits nil)
	      ;; Display the symbol's container name in an imenu entry.
	      (setq lsp-imenu-show-container-name t)
	      ;; Separator string to use to separate the container name from the
	      ;; symbol while displaying imenu entries.
	      (setq lsp-imenu-container-name-separator t)
	      ;; How to sort the imenu items. The value is a list of kind, name
	      ;; or position. Priorities are determined by the index of the element.
	      (setq lsp-imenu-sort-methods 1)
	      ;; Number of seconds to wait for a response from the language server
	      ;; before timing out.
	      (setq lsp-response-timeout 5)
	      ;; If non-nil lsp-mode will watch the files in the workspace if the
	      ;; server has requested that.
	      (setq lsp-enable-file-watchers t)
	      ;; Request trace mode on the language server.
	      (setq lsp-server-trace t)
	      ;; Enable experimental semantic highlighting support
	      (setq lsp-semantic-highlighting t)
	      ;; If non-nil, automatically enable imenu integration when server
	      ;; provides textDocument/documentSymbol.
	      (setq lsp-enable-imenu t)
	      ;; Auto activate signature when trigger conditions are meet.
	      (setq lsp-signature-auto-activate 1)
	      ;; Include signature documentation in signature help.
	      (setq lsp-signature-render-documentation 1)
	      ;; Enable textDocument/documentColor when server supports it.
	      (setq lsp-enable-text-document-color 1)
	      ;; Enable lsp-headerline-breadcrumb-mode.
	      (setq lsp-headerline-breadcrumb-enable 1)
	      ;; (with-eval-after-load 'lsp-mode
	      ;;   (mapc #'lsp-flycheck-add-mode '(js2-mode)))
	      ))
  )
(use-package lsp-ui
  :ensure
  :after lsp-mode
  :config
  (progn
    ;; show the directory of files
    ;; (lsp-ui-peek-show-directory 1)
    ;; enable ‘lsp-ui-peek’
    (lsp-ui-peek-enable 1)
    ;; enable lsp-ui-doc
    (lsp-ui-doc-enable 1)
    ;; Where to display the doc
    (setq lsp-ui-doc-position 1)
    ;; Number of seconds before showing the doc
    (setq lsp-ui-doc-delay 1)
    ;; show diagnostics messages in sideline
    (setq lsp-ui-sideline-show-diagnostics 1)
    ;; show hover messages in sideline
    (setq lsp-ui-sideline-show-hover 1)
    ;; show code actions in sideline
    (setq lsp-ui-sideline-show-code-actions 1)
    ;; When set to 'line' the information will be updated when
    ;; user changes current line otherwise the information will
    ;; be updated when user changes current point
    (setq lsp-ui-sideline-update-mode t)
    ;; seconds to wait before showing sideline
    (setq lsp-ui-sideline-delay 0)
    ;; keystrokes
    (define-prefix-command 'lsp)
    (global-set-key (kbd "M-l") 'lsp)
    (define-key lsp (kbd "d") 'lsp-ui-peek-find-definitions)
    (define-key lsp (kbd "r") 'lsp-ui-peek-find-references)
    (define-key lsp (kbd "i") 'lsp-ui-peek-find-implementation)
    (define-key lsp (kbd "w") 'lsp-ui-peek-find-workspace-symbol)
    (define-key lsp (kbd "<left>") 'lsp-ui-peek-jump-backward)
    (define-key lsp (kbd "<right>") 'lsp-ui-peek-jump-forward)
    )
  )

(use-package helm-lsp
  :ensure
  :after helm
  :after lsp-mode
  :config
  (progn
    (define-key lsp-mode-map
      [remap xref-find-apropos]
      #'helm-lsp-workspace-symbol)))

(use-package helm-projectile
  :ensure
  :config (progn
	    (helm-projectile-on)))

(use-package js2-mode
  :ensure
  :config
  (progn
    (define-prefix-command 'js2-keys)
    (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))))

(use-package js2-refactor
  :ensure
  :after js2-mode)

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2
    :ensure
    :config
    (progn
      (define-prefix-command 'xref-js2)
      (global-set-key (kbd "C-c x") 'xref-js2)
      (define-key xref-js2 (kbd "a")   'js2-mode-show-all)
      (define-key xref-js2 (kbd "e")   'js2-mode-hide-element)
      (define-key xref-js2 (kbd "f")   'js2-mode-toggle-hide-functions)
      (define-key xref-js2 (kbd "g")   'xref-revert-buffer)
      (define-key xref-js2 (kbd "j")   'js2-jump-to-definition)
      (define-key xref-js2 (kbd "n")   'xref-next-line)
      (define-key xref-js2 (kbd "N")   'xref-next-group)
      (define-key xref-js2 (kbd "o")   'js2-mode-toggle-element)
      (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point)
      (define-key xref-js2 (kbd "P")   'xref-prev-group)
      (define-key xref-js2 (kbd "p")   'xref-prev-line)
      (define-key xref-js2 (kbd "r")   'xref-query-replace-in-results)
      (define-key xref-js2 (kbd "s")   'js2-mode-show-element)
      (define-key xref-js2 (kbd "t")   'js2-mode-toggle-hide-comments)
      (define-key xref-js2 (kbd "w")   'js2-mode-toggle-warnings-and-errors)
      (define-key xref-js2 (kbd "RET") 'xref-goto-xref)
      (define-key xref-js2 (kbd "TAB") 'xref-quit-and-goto-xref)
      (define-key xref-js2 (kbd ".")   'xref-next-line)
      (define-key xref-js2 (kbd ",")   'xref-prev-line)
      ;;(define-key xref-js2 [remap indent-new-comment-line] #'js2-line-break)
      ;;(define-key xref-js2 [down-mouse-3] #'js2-down-mouse-3)
      (add-hook 'js2-mode-hook (lambda ()
				 (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))))

(use-package json-mode
  :ensure
  :after js2-mode
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.json\\'"   . json-mode))
    (global-set-key (kbd "C-c C-j") 'js2-keys)
    ;; format the region/buffer with json-reformat (https://github.com/gongo/json-reformat)
    ;; (define-key js2-keys (kbd "f") 'json-mode-beautify)
    ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
    (define-key js2-keys (kbd "p") 'json-mode-show-path)
    ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
    (define-key js2-keys (kbd "P") 'json-mode-kill-path)
    ;; Toggle between true and false at point
    ;; (define-key js2-keys (kbd "t") 'json-toggle-boolean)
    ;; sexp Replace the at point with null
    ;; (define-key js2-keys (kbd "k") 'json-nullify-sexp)
    ;; Increment the number at point
    ;; (define-key js2-keys (kbd "i") 'json-increment-number-at-point)
    ;; Decrement the number at point
    ;; (define-key js2-keys (kbd "d") 'json-decrement-number-at-point)
    ))

;; (use-package spaceline
;;   :ensure
;;   :after s
;;   :after memoize
;;   :config
;;   (use-package powerline
;;     :ensure)
;;   (use-package spaceline-config
;;     :config
;;     (spaceline-toggle-buffer-modified-on)
;;     (spaceline-toggle-line-column-on)
;;     (spaceline-toggle-minor-modes-off)
;;     (spaceline-toggle-buffer-encoding-off)
;;     (spaceline-toggle-buffer-encoding-abbrev-off)
;;     (setq powerline-default-separator 'rounded)
;;     (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
;;     (spaceline-define-segment line-column "The current line and column numbers." "l:%l c:%2c")
;;     (spaceline-define-segment time "The current time." (format-time-string "%H:%M"))
;;     (spaceline-define-segment date "The current date." (format-time-string "%h %d"))
;;     (spaceline-toggle-time-on)
;;     (spaceline-emacs-theme 'date 'time)
;;     (use-package spaceline-all-the-icons
;;       :ensure
;;       :after spaceline
;;       :config
;;       (spaceline-all-the-icons-theme)
;;       (spaceline-all-the-icons--setup-git-ahead))))

;; (use-package desktop
;;   :config
;;   (progn
;;     ;; use only one desktop
;;     (setq desktop-path '("~/.emacs.d/"))
;;     (setq desktop-dirname "~/.emacs.d/")
;;     (setq desktop-base-file-name "emacs-desktop")
;;     (setq desktop-restore-eager 5)
;;     (setq desktop-load-locked-desktop t)
;;     (desktop-save-mode +1)
;;     ;; remove desktop after it's been read
;;     (add-hook 'desktop-after-read-hook
;; 	      '(lambda ()
;; 		 ;; desktop-remove clears desktop-dirname
;; 		 (setq desktop-dirname-tmp desktop-dirname)
;; 		 (desktop-remove)
;; 		 (setq desktop-dirname desktop-dirname-tmp)))
;;     (defun saved-session ()
;;       (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))
;;     ;; use session-restore to restore the desktop manually
;;     (defun session-restore ()
;;       "Restore a saved emacs session."
;;       (interactive)
;;       (if (saved-session)
;; 	  (desktop-read)
;; 	(message "No desktop found.")))
;;     ;; use session-save to save the desktop manually
;;     (defun session-save ()
;;       "Save an emacs session."
;;       (interactive)
;;       (if (saved-session)
;; 	  (if (y-or-n-p "Overwrite existing desktop? ")
;; 	      (desktop-save-in-desktop-dir)
;; 	    (message "Session not saved."))
;; 	(desktop-save-in-desktop-dir)))
;;     ;; ask user whether to restore desktop at start-up
;;     (add-hook 'after-init-hook
;; 	      '(lambda ()
;; 		 (if (saved-session)
;; 			 (session-restore))))))



;; optionally
;;(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)



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

;;; .packages.el ends here
