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
;;(message "→ C-c c for copying lines!")

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(global-set-key [(control shift up)]  'move-line-up)
;;(message "→ C-Shift-up for moving line up!")

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift down)]  'move-line-down)
;;(message "→ C-Shift-down for moving line down!")

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
;;(message "→ C-c l for select-line!")

(global-set-key (kbd "C-c m") 'mc/mark-next-like-this)
;;(message "→ C-c m for selecting next like this!")

;; (defun eval-line ()
;;   "Select current line."
;;   (interactive)
;;   (let (p1 p2)
;;     (setq p1 (line-beginning-position))
;;     (setq p2 (line-end-position))
;;     (goto-char p1)
;;     (push-mark p2)
;;     (setq mark-active t)
;;     (eval-region p1 p2)))

(global-set-key (kbd "C-c e")  'eval-region)
;;(message "→ C-c l for eval-region!")

;; references
;; http://ergoemacs.org/emacs/emacs_region.html

;; You can also edit plain js, jsx, css, scss, xml files.

;; (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsx\\'"  . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.rjsx\\'" . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
;; (add-to-list 'auto-mode-alist '("\\.ts\\'"   . typescript-mode))
;; (add-to-list 'auto-mode-alist '("\\.tsx\\'"  . typescript-mode))
;; to flash instead of ringing the bell

;;(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; (setq projectile-project-search-path '("~/github/"))
;; (setq projectile-project-search-path '("~/gitlab/"))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "M-+") 'text-scale-decrease)

(global-set-key [M-down-mouse-1] nil)
;;(global-set-key [M-mouse-1] #'mc/add-cursor-on-click)


;; (global-set-key (kbd "M-t") nil) ;; Remove the old keybinding
;; (global-set-key (kbd "M-t c") 'transpose-chars)
;; (global-set-key (kbd "M-t w") 'transpose-words)
;; (global-set-key (kbd "M-t t") 'transpose-words)
;; (global-set-key (kbd "M-t M-t") 'transpose-words)
;; (global-set-key (kbd "M-t l") 'transpose-lines)
;; (global-set-key (kbd "M-t e") 'transpose-sexps)
;; (global-set-key (kbd "M-t s") 'transpose-sentences)
;; (global-set-key (kbd "M-t p") 'transpose-paragraphs)
;; 
;; (define-key map (kbd "C-c m") #'mc/mark-next-like-this)
;; (global-unset-key (kbd "M-<down-mouse-1>"))
;; (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
;; (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

(setq
  user-mail-address "ricardomalnati@gmail.com"
  user-full-name  "Ricardo Malnati")
(setq vc-follow-symlinks t)
