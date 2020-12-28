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

(add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
(package-refresh-contents)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/libs/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/libs/use-package-2.4.1/")
  (require 'use-package))

(use-package eglot
  :ensure)

(use-package eglot
  :init (progn
	  (add-hook 'js2-mode-hook 'eglot-ensure)
	  (add-hook 'java-mode-hook 'eglot-ensure))
  :config (progn
	    (let ((cp (getenv "CLASSPATH")))
	      (setenv "CLASSPATH"
		      (concat cp ":" "~/.emacs.d/servers/eclipse.jdt.ls-0.67.0/target"))
	      (unwind-protect (eglot--eclipse-jdt-contact nil)
		(setenv "CLASSPATH" cp)))
	    (setcdr (assq 'java-mode eglot-server-programs) #'my-eglot-eclipse-jdt-contact)
	    (add-to-list 'eglot-server-programs
			 '(js2-mode . ("~/.emacs.d/servers/javascript-typescript-langserver" "--stdio")))))
;; java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 -Declipse.application=org.eclipse.jdt.ls.core.id1 -Dosgi.bundles.defaultStartLevel=4 -Declipse.product=org.eclipse.jdt.ls.core.product -Dlog.level=ALL -noverify -Xmx1G -jar ./plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar -configuration ./config_linux -data /path/to/data --add-modules=ALL-SYSTEM --add-opens java.base/java.util=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED

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

;;; .draft.el ends here
