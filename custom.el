;; to flash instead of ringing the bell
(setq visible-bell t)

(setq projectile-project-search-path '("~/github/"))
(setq projectile-project-search-path '("~/gitlab/"))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "M-+") 'text-scale-decrease)

(global-set-key [M-down-mouse-1] nil)
(global-set-key [M-mouse-1] #'mc/add-cursor-on-click)


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

