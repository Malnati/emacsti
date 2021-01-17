;;; packages --- .preferences.el
;;
;; Copyright (C) 2020 Ricardo Malnati Rosa Lima
;;
;; Author: Ricardo Malnati <ricardomalnati@gmail.com>
;; Version: 1.0.0
;; Package-Version:
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
;; Configuring a set of Emacs's preferences.
;;
;; Install:
;;
;; Copy to `.preferences.el' your .emacs.d/ and add
;; `(load-file "~/.emacs.d/.preferences.el")' to your `~/.emacs' file
;;
;;; Code:



(progn
  "Preferences settings"
  (setq custom-file "~/.emacs.d/.emacs-save-options.el")
  
  (delete-selection-mode 1)
  (fringe-mode 8)
  (fset 'yes-or-no-p 'y-or-n-p)
  (global-auto-revert-mode t)
  (global-display-line-numbers-mode t)
  (global-visual-line-mode t)
  (recentf-mode 1)
  (save-place-mode t)
  (scroll-bar-mode -1)
  (set-cursor-color "yellow")
  (set-face-attribute 'default nil :height 100)
  (set-face-foreground 'fringe "orange")
  (setq auto-save-default t)
  (setq auto-save-interval 5)
  (setq auto-save-visited-file-name t)
  (setq buffers-menu-buffer-name-length 64)
  (setq buffers-menu-max-size 32)
  (setq buffers-menu-show-directories t)
  (setq command-history-hook t)
  (setq completions-file-versions-kept 9992)
  (setq default-directory "~/")
  (setq delete-auto-save-files nil)
  (setq delete-by-moving-to-trash t)
  (setq display-line-numbers t)
  (setq doc-view-continuous t)
  (setq history-length 2048)
  (setq ido-enabling-flex-matching t)
  (setq ido-everywhere t)
  (setq initial-buffer-choice t)
  (setq list-command-history-max 2048)
  (setq make-backup-files -1)
  (setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
  (setq backup-by-copying t)
  (setq org-startup-with-beamer-mode t)
  (setq tab-always-indent 'complete)
  (setq undo-ask-before-discard t)
  (setq undo-limit 9999999999999999)
  (setq undo-outer-limit 99999999999999999)
  (setq undo-strong-limit 9999999999999999)
  (setq vc-follow-symlinks t)
  (setq visible-bell t)
  (setq window-divider-default-right-width t)
  (setq x-gtk-show-hidden-files t)
  (setq yank-menu-length 9999)
  (setq-default cursor-type 'bar)
  (show-paren-mode t)
  (tool-bar-mode -1)
  (window-divider-mode -1)
  (electric-pair-mode 1))

(progn
  "set transparency"
  (set-frame-parameter (selected-frame) 'alpha '(97 . 97))
  (add-to-list 'default-frame-alist '(alpha . (97 . 97)))
  (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
  (add-to-list 'default-frame-alist '(fullscreen . maximized)))

(progn
  "Use spaces instead of tabs for indentation"
  (setq-default indent-tabs-mode nil))

(progn
  "Enable line numbers and customize their format."
  (column-number-mode)
  ;; Enable line numbers for some modes
  (dolist (mode '(text-mode-hook
		  prog-mode-hook
		  conf-mode-hook))
    (add-hook mode (lambda () (display-line-numbers-mode 1))))
  ;; Override some modes which derive from the above
  (dolist (mode '(org-mode-hook))
    (add-hook mode (lambda () (display-line-numbers-mode 0)))))

(progn
  "Don’t warn when advice is added for functions"
  (setq ad-redefinition-action 'accept))

(defun emacsti-commit-after-save ()
  "Commit all buffers to git after save C-x C-s."
  (interactive)
  (shell-command-to-string
   "git add . && git commit -m \"Auto-commited by emacsti-commit-after-save\""))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1))

(defun select-line ()
  "Select current line."
  (interactive)
  (let (p1 p2)
    (setq p1 (line-beginning-position))
    (setq p2 (line-end-position))
    (goto-char p1)
    (push-mark p2)
    (setq mark-active t)))

(progn
  "Makes buffer switch command do suggestions, 
also for find-file command"
  :link "http://ergoemacs.org/emacs/emacs_ido_setup.html"
  (require 'ido)
  (ido-mode 1)
  ;; show choices vertically
  (if (version< emacs-version "25")
      (progn
        (make-local-variable 'ido-separator)
        (setq ido-separator "\n"))
    (progn
      (make-local-variable 'ido-decorations)
      (setf (nth 2 ido-decorations) "\n")))
  ;; show any name that has the chars you typed
  (setq ido-enable-flex-matching t)
  ;; use current pane for newly opened file
  (setq ido-default-file-method 'selected-window)
  ;; use current pane for newly switched buffer
  (setq ido-default-buffer-method 'selected-window)
  ;; stop ido from suggesting when naming new file
  (define-key (cdr ido-minor-mode-map-entry) [remap write-file] nil))

(provide 'preferences )
;;; .preferences.el ends here
