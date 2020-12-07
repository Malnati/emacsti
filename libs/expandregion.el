;; https://github.com/magnars/expand-region.el
(add-to-list 'load-path "~/.emacsti/libs/expand-region/")
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(message "→ C-= for expanding selection!")

(global-set-key (kbd "M-=") 'er/mark-inside-pairs)
(message "→ M-= for selecting content inside pairs!")
