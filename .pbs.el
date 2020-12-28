;;; packages --- .pbs.el

;; Copyright (C) 2020 Ricardo Malnati Rosa Lima
;;
;; Author: Ricardo Malnati <ricardomalnati@gmail.com>
;; Homepage: https://github.com/Malnati/.pbl.el.git
;; Version: 1.0.0
;; Package-Version:
;; Package-Commit: 
;; Package-Requires: ((emacs "24.4") (package))
;; Keywords: package
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;
;;; Commentary:
;;
;; Setup directories of repositories by system-type, for adding use-package.
;;
;; Install:
;;
;; Copy to `.pbl.el' your .emacs.d/ and add
;; `(load-file "~/.emacs.d/.pbl.el")' to your `~/.emacs' file
;;
;; There are just the functions below, you can use:
;;
;; 1) M-x `pbl-setup'
;;        "Setup of the package Melpa stable and unstable repositories."
;; 2) M-x `pbl-setup-dirs'
;;        "Setup location of the package archive by system-type."
;; e) M-x `pbl-setup-all'
;;        "Setup directories, Melpa repositories for adding use-package."
;;
;;; Code:

(defun pbl-setup-melpa
    (interactive)    
  "Setup of the package Melpa stable and unstable repositories."
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
  (package-refresh-contents))

(defun pbl-setup-dirs
    (interactive)    
  "Setup location of the package archive."
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
    (message "package-user-dir is ~/.emacs.d/libs/elpa-linux")))

(defun pbs-setup
    (interactive)
  "Setup directories, Melpa repositories for adding use-package."
  (condition-case nil
      (require 'use-package)
    (file-error
     (require 'package)
     (pbs-setup-dir)
     (pbs-setup-melpa)
     (package-install 'use-package)
     (require 'use-package))))

(provide '.pbs)

;;; .pbs.el ends here
