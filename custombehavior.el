(setq doc-view-continuous t)
(message "→ doc-view-continuous ON!")

(setq delete-auto-save-files nil)
(message "→ delete-auto-save-files OFF!")

(setq delete-by-moving-to-trash t)
(message "→ delete-by-moving-to-trash ON!")

(setq initial-buffer-choice t)
(message "→ initial-buffer-choice ON!")

(setq x-gtk-show-hidden-files t)
(message "→ x-gtk-show-hidden-files ON!")

(setq tab-always-indent 'complete)
(message "→ tab-always-indent 'complete!")

(setq delete-selection-mode 1)
(message "→ completedelete-selection-mode ON!")

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


(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
)
(global-set-key (kbd "C-c c") 'copy-line)

(fset (quote yes-or-no-p) t)
(message "yes-or-no-p ON!")
