(setq make-backup-files -1)
(message "→ make-backup-files #file# OFF!")

(setq backup-directory-alist
      '(("" . "~/.emacs.d/backup")))
(message "→ backup-directory-alist #file# to \"~/.emacs.d/backup\" !")

(setq auto-save-default t)
(message "→ auto-save-default file~ ON!")

(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/backup" t)))
(message "→ auto-save-file-name-transforms file~ to \"~/.emacs.d/backup\" !")

(setq auto-save-interval 100)f
(message "→ auto-save-interval 100!")

(setq auto-save-visited-file-name t)
(message "→ auto-save-visited-file-name ON!")

(setq auto-save-interval 100)
(message "→ auto-save-interval 100!")

(setq auto-save-visited-file-name t)
(message "→ auto-save-visited-file-name ON!")

;; store All Backup And Autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))



(save-place-mode t)
(message "→ save-place-mode ON!")

(recentf-mode 1)
(message "→ recentf-mode ON!")

(setq command-history-hook nil)
(message "→ command-history-hook OFF!")
(setq completions-file-versions-kept 9992)
(message "→ completions-file-versions-kept 9992!")
(setq history-length 2048)
(message "→ history-length 2048!")
(setq list-command-history-max 2048)
(message "→ list-command-history-max 2048!")
(setq undo-ask-before-discard t)
(message "→ undo-ask-before-discard ON!")
(setq undo-limit 9999999999999999)
(message "→ undo-limit 9999999999999999!")
(setq undo-outer-limit 99999999999999999)
(message "→ undo-outer-limit 99999999999999999!")
(setq undo-strong-limit 9999999999999999)
(message "→ undo-strong-limit 9999999999999999!")
(setq yank-menu-length 32)
(message "→ yank-menu-length 32!")
