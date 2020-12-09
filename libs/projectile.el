;; https://docs.projectile.mx/projectile/usage.html
(add-to-list 'load-path "~/.emacsti/libs/projectile-2.2.0/")

(projectile-mode +1)
(message "→ projectile-mode ON!")

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(message "→ projectile keybind s-p ON!")

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(message "→ projectile keybing C-c p ON!")

(setq projectile-project-search-path '("~/.emacs.d/"))
(message "→ projectile search path ~/.emacs.d ON!")

(setq projectile-sort-order 'recentf)
(message "→ projectile sort order to recentf ON!")
