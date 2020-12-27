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
  :ensure)

(use-package flycheck
  :ensure)

(use-package helm
  :ensure)

(use-package lsp-mode
  :ensure)
  
(use-package lsp-ui
  :ensure)

(use-package helm-lsp
  :ensure)

(use-package helm-projectile
  :ensure)

(use-package js2-mode
  :ensure)

(use-package js2-refactor
  :ensure)

(use-package xref-js2
  :ensure)

(use-package json-mode
  :ensure)

;;; .packages.el ends here
