;;; packages --- .preferences.el
;;
;; Copyright (C) 2020 Ricardo Malnati Rosa Lima
;;
;; Author: Ricardo Malnati <ricardomalnati@gmail.com>
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
;; Configuring a set of Emacs's preferences.
;;
;; Install:
;;
;; Copy to `.preferences.el' your .emacs.d/ and add
;; `(load-file "~/.emacs.d/.preferences.el")' to your `~/.emacs' file
;;
;;; Code:

(defun emacsti-commit-after-save ()
  "Commit all buffers to git after save C-x C-s."
  (interactive)
  (shell-command-to-string
   "git add . && git commit -m \"Auto-commited by emacsti-commit-after-save\"")
  (message "Exceuted → Auto-commited by emacsti-commit-after-save")
  ;; (session-save)

  )

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)

(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
)

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
  (setq delete-auto-save-files nil)
  (window-divider-mode -1)
  (setq window-divider-default-right-width t)
  (global-display-line-numbers-mode t)
  (setq display-line-numbers t)
  (column-number-mode t)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (fringe-mode 8)
  (set-face-foreground 'fringe "orange")
  (setq buffers-menu-buffer-name-length 64)
  (setq buffers-menu-max-size 32)
  (setq buffers-menu-show-directories t)
  (setq-default cursor-type 'bar)
  (set-cursor-color "yellow")
  (global-visual-line-mode t)
  (setq org-startup-with-beamer-mode t)
  (setq make-backup-files -1)
  (global-auto-revert-mode t)
  (setq delete-by-moving-to-trash t)
  (setq auto-save-visited-file-name t)
  (setq auto-save-interval 5)
  (save-place-mode t)
  (recentf-mode 1)
  (setq command-history-hook t)
  (setq completions-file-versions-kept 9992)
  (setq history-length 2048)
  (setq list-command-history-max 2048)
  (setq undo-ask-before-discard t)
  (setq undo-limit 9999999999999999)
  (setq undo-outer-limit 99999999999999999)
  (setq undo-strong-limit 9999999999999999)
  (setq yank-menu-length 9999)
  (setq doc-view-continuous t)
  (message "→ doc-view-continuous ON!")
  (setq initial-buffer-choice t)
  (message "→ initial-buffer-choice ON!")
  (setq x-gtk-show-hidden-files t)
  (message "→ x-gtk-show-hidden-files ON!")
  (setq tab-always-indent 'complete)
  (message "→ tab-always-indent 'complete!")
  (delete-selection-mode 1)
  (message "→ completedelete-selection-mode ON!")
  (fset (quote yes-or-no-p) t)
  (message "→ yes-or-no-p ON!")
  (global-set-key (kbd "C-c d") 'duplicate-line)
  (message "→ C-c d for duplicating lines!")
  (global-set-key (kbd "C-c c") 'copy-line)
  (message "→ C-c c for copying lines!")
  (global-set-key [(control shift up)]  'move-line-up)
  (message "→ C-Shift-up for moving line up!")
  (global-set-key [(control shift down)]  'move-line-down)
  (message "→ C-Shift-down for moving line down!")
  (global-set-key (kbd "C-c l")  'select-line)
  (message "→ C-c l for select-line!")
  (setq default-directory "~/")
  (fset 'yes-or-no-p 'y-or-n-p)
  (global-set-key (kbd "C-z") 'undo)
  (global-set-key (kbd "C-c b")  'eval-buffer)
  (global-set-key (kbd "C-c e")  'eval-region)
  (global-set-key [(control shift up)]  'text-scale-increase)
  (global-set-key [(control shift down)]  'text-scale-decrease)
  (show-paren-mode t)
  (setq visible-bell t)
  (setq vc-follow-symlinks t)
  (global-set-key (kbd "C-c s")  'select-line)
  (setq ido-everywhere t)
  (setq ido-enabling-flex-matching t)
  (set-face-attribute 'default nil :height 110)
  (setq backup-directory-alist
	'(("" . "~/.emacs.d/backup")))
  (setq auto-save-default t)
  (setq auto-save-file-name-transforms
	`((".*" , "~/.emacs.d/backup" t)))
  (setq initial-frame-alist
	(quote
	 (
	  (bottom-divider-width . 1)
	  (right-divider-width . 1)
	  ;; (border-width . 1)
	  ;; (internal-border-width . 1)
	  (scroll-bar-width . 2)
	  )
	 )
	)
  )

;;; .preferences.el ends here
