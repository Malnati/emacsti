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
;;(message "→ initial-frame-alist custom setup widths for borders, dividers and others DONE!")

(window-divider-mode -1)
;(message "→ Window divider OFF!")

(setq window-divider-default-right-width t)
;;(message "→ window-divider-default-right-width ON!")

(global-display-line-numbers-mode t)
;(message "→ Showing line numbers globally!")

(setq display-line-numbers t)
;;(message "→ Showing line numbers!")

(column-number-mode t)
;;(message "→ Showing colunm number!")

(scroll-bar-mode -1)
;;(message "→ Removed scrolls!")

(tool-bar-mode -1)
;;(message "→ Removed tool bar!")

(fringe-mode 8)
;;(message "→ Fringes sized to 8px!")

;;(set-face-background 'fringe "brightcyan")
;;(message "→ Fringes background\"brightcyan\"!")

(set-face-foreground 'fringe "orange")
;;(message "→ Fringes foreground\"orange\"!")

(setq buffers-menu-buffer-name-length 64)
;;(message "→ Buffers menu lenght sized to 64!")

(setq buffers-menu-max-size 32)
;;(message "→ Buffers menu sized to 32!")

(setq buffers-menu-show-directories t)
;;(message "→ Buffers menu show directories ON!")

(setq-default cursor-type 'bar)
;;(message "→ cursor-type 'bar!")

(set-cursor-color "yellow")
;;(message "→ cursor-color \"yellow\"!")

(global-visual-line-mode t)

(setq org-startup-with-beamer-mode t)


(setq make-backup-files -1)
;;(message "→ make-backup-files #file# OFF!")

(global-auto-revert-mode t)
;;(message "→ global-auto-revert-mode ON!")

(setq backup-directory-alist
      '(("" . "~/.emacs.d/backup")))
;;(message "→ backup-directory-alist #file# to \"~/.emacs.d/backup\" !")

(setq auto-save-default t)
;;(message "→ auto-save-default file~ ON!")

(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/backup" t)))
;;(message "→ auto-save-file-name-transforms file~ to \"~/.emacs.d/backup\" !")

(setq delete-auto-save-files nil)
;;(message "→ delete-auto-save-files OFF!")

(setq delete-by-moving-to-trash t)
;;(message "→ delete-by-moving-to-trash ON!")

(setq auto-save-visited-file-name t)
;;(message "→ auto-save-visited-file-name ON!")

(setq auto-save-interval 5)
;;(message "→ auto-save-interval each 5 charracters changed!")

(setq auto-save-visited-file-name t)
;;(message "→ auto-save-visited-file-name ON!")

(save-place-mode t)
;;(message "→ save-place-mode ON!")

(recentf-mode 1)
;;(message "→ recentf-mode ON!")

(setq command-history-hook t)
;;(message "→ command-history-hook ON!")

(setq completions-file-versions-kept 9992)
;;(message "→ completions-file-versions-kept 9992!")

(setq history-length 2048)
;;(message "→ history-length 2048!")

(setq list-command-history-max 2048)
;;(message "→ list-command-history-max 2048!")

(setq undo-ask-before-discard t)
;;(message "→ undo-ask-before-discard ON!")

(setq undo-limit 9999999999999999)
;;(message "→ undo-limit 9999999999999999!")

(setq undo-outer-limit 99999999999999999)
;;(message "→ undo-outer-limit 99999999999999999!")

(setq undo-strong-limit 9999999999999999)
;;(message "→ undo-strong-limit 9999999999999999!")

(setq yank-menu-length 9999)
;;(message "→ yank-menu-length 9999!")

(defun emacsti-commit-after-save ()
  "Commit all buffers to git after save C-x C-s."
  (interactive)
  (shell-command-to-string
   "git add . && git commit -m \"Auto-commited by emacsti-commit-after-save\"")
  (message "Exceuted → Auto-commited by emacsti-commit-after-save")
  ;; (session-save)
  ;; (message "Exceuted → Auto-session-save by session-save")
  )

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

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c d") 'duplicate-line)
(message "→ C-c d for duplicating lines!")

(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
)
(global-set-key (kbd "C-c c") 'copy-line)
(message "→ C-c c for copying lines!")

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(global-set-key [(control shift up)]  'move-line-up)
(message "→ C-Shift-up for moving line up!")

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift down)]  'move-line-down)
(message "→ C-Shift-down for moving line down!")

(defun select-line ()
  "Select current line."
  (interactive)
  (let (p1 p2)
    (setq p1 (line-beginning-position))
    (setq p2 (line-end-position))
    (goto-char p1)
    (push-mark p2)
    (setq mark-active t)))

(global-set-key (kbd "C-c l")  'select-line)
(message "→ C-c l for select-line!")


(setq default-directory "~/")
;; (message "→ default-directory at ~/ !")

(setq doc-view-continuous t)
;;(message "→ doc-view-continuous ON!")

(setq initial-buffer-choice t)
;;(message "→ initial-buffer-choice ON!")

(setq x-gtk-show-hidden-files t)
;;(message "→ x-gtk-show-hidden-files ON!")

(setq tab-always-indent 'complete)
;;(message "→ tab-always-indent 'complete!")

(delete-selection-mode 1)
;;(message "→ completedelete-selection-mode ON!")

(fset 'yes-or-no-p 'y-or-n-p)
;;(fset (quote yes-or-no-p) t)
;;(message "→ yes-or-no-p ON!")

(global-set-key (kbd "C-z") 'undo)
;;(message "→ C-z is undo!")

(global-set-key (kbd "C-c b")  'eval-buffer)
;;(message "→ C-c b for eval-buffer!")

(global-set-key (kbd "C-c e")  'eval-region)
;;(message "→ C-c e for eval-region!")

;; (global-set-key (kbd "C-c r")  'revert-buffer)
;;(message "→ C-c r for revert-buffer")

(global-set-key [(control shift up)]  'text-scale-increase)
(global-set-key [(control shift down)]  'text-scale-decrease)

;; toggle fullscreen
;; (toggle-frame-fullscreen)

(column-number-mode t)

(global-display-line-numbers-mode t)

(show-paren-mode t)

(tool-bar-mode -1)

(setq visible-bell t)

(setq vc-follow-symlinks t)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c d") 'duplicate-line)
;;(message "→ C-c d for duplicating lines!")

(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
)
(global-set-key (kbd "C-c c") 'copy-line)
;; (message "→ C-c c for copying lines!")

(defun select-line ()
  "Select current line."
  (interactive)
  (let (p1 p2)
    (setq p1 (line-beginning-position))
    (setq p2 (line-end-position))
    (goto-char p1)
    (push-mark p2)
    (setq mark-active t)))

(global-set-key (kbd "C-c s")  'select-line)
;;(message "→ C-c l for select-line!")

(setq ido-everywhere t)

(setq ido-enabling-flex-matching t)

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
;; (message  "→ initial-frame-alist custom setup widths for borders, dividers and others DONE!")

(window-divider-mode -1)
;; (message "→ Window divider OFF!")

(setq window-divider-default-right-width t)
;; (message "→ window-divider-default-right-width ON!")

(global-display-line-numbers-mode t)
;; (message "→ Showing line numbers globally!")

(setq display-line-numbers t)
;; (message "→ Showing line numbers!")

(column-number-mode t)
;; (message "→ Showing colunm number!")

(scroll-bar-mode -1)
;; (message "→ Removed scrolls!")

(tool-bar-mode -1)
;; (message "→ Removed tool bar!")

(fringe-mode 8)
;; (message "→ Fringes sized to 8px!")

;;(set-face-background 'fringe "brightcyan")
;;;; (message "→ Fringes background\"brightcyan\"!")

(set-face-attribute 'default nil :height 110)
;; (message "→ Font size 110!")

(set-face-foreground 'fringe "orange")
;; (message "→ Fringes foreground\"orange\"!")

(setq buffers-menu-buffer-name-length 64)
;; (message "→ Buffers menu lenght sized to 64!")

(setq buffers-menu-max-size 32)
;; (message "→ Buffers menu sized to 32!")

(setq buffers-menu-show-directories t)
;; (message "→ Buffers menu show directories ON!")

(setq-default cursor-type 'bar)
;; (message "→ cursor-type 'bar!")

(set-cursor-color "yellow")
;; (message "→ cursor-color \"yellow\"!")

(global-visual-line-mode t)

(setq org-startup-with-beamer-mode t)

;;; .preferences.el ends here

