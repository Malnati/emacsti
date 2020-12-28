;;; package --- .loader.el
;;; Commentary:
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

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/libs/bind-key-2.4.1/")
  (add-to-list 'load-path "~/.emacs.d/libs/use-package-2.4.1/")
  (require 'use-package))

;;(load-file "~/.emacs.d/.install.el")
(load-file "~/.emacs.d/.config.el")
(load-file "~/.emacs.d/.defer.el")
(load-file "~/.emacs.d/.faces.el")
(load-file "~/.emacs.d/.save.el")
(load-file "~/.emacs.d/.custom.el")
(load-file "~/.emacs.d/.draft.el")

;;; #.loader.le# ends here
