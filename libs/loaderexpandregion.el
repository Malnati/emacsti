;; https://github.com/magnars/expand-region.el
(add-to-list 'load-path "~/.emacsti/libs/expand-region/")
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
