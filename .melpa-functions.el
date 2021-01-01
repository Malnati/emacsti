
(defun package-drive-configure-elpa-dirs-f 
    (interactive)
  (require 'package)
  (when
      (member system-type '(pc w32 ms-dos windows-nt cygwin))
    (setq package-user-dir "~/.emacs.d/mswin"))
  (when
      (member system-type '(ns darwin))
    (setq package-user-dir "~/.emacs.d/macos"))
  (when
      (member system-type '(gnu/linux gnu x))
    (setq package-user-dir "~/.emacs.d/linux")))

(defun package-drive-configure-melpa-f 
    (interactive)
  (require 'package)
  (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
  (package-initialize))
