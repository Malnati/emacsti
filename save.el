(setq make-backup-files -1)
(message "→ make-backup-files #file# OFF!")

(global-auto-revert-mode t)
(message "→ global-auto-revert-mode ON!")

(setq backup-directory-alist
      '(("" . "~/.emacs.d/backup")))
(message "→ backup-directory-alist #file# to \"~/.emacs.d/backup\" !")

(setq auto-save-default t)
(message "→ auto-save-default file~ ON!")

(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/backup" t)))
(message "→ auto-save-file-name-transforms file~ to \"~/.emacs.d/backup\" !")

(setq delete-auto-save-files nil)
(message "→ delete-auto-save-files OFF!")

(setq delete-by-moving-to-trash t)
(message "→ delete-by-moving-to-trash ON!")

(setq auto-save-visited-file-name t)
(message "→ auto-save-visited-file-name ON!")

(setq auto-save-interval 10)
(message "→ auto-save-interval each 10 charracters changed!")

(setq auto-save-visited-file-name t)
(message "→ auto-save-visited-file-name ON!")

(save-place-mode t)
(message "→ save-place-mode ON!")

(recentf-mode 1)
(message "→ recentf-mode ON!")

(setq command-history-hook t)
(message "→ command-history-hook ON!")

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

(setq yank-menu-length 9999)
(message "→ yank-menu-length 9999!")

;;(when (eq major-mode 'org-mode)
;;  (shell-command-to-string (format "your-script-name %s" buffer-file-name))))
;; 
(defun emacsti-commit-after-save ()
       "Commit this buffer to git after save it."
       (interactive)
       (shell-command-to-string
	"git add . && git commit -m \"Auto-commited by emacsti-commit-after-save\"")
       (message "Exceuted → Auto-commited by emacsti-commit-after-save"))
(add-hook 'after-save-hook #'emacsti-commit-after-save)
  
