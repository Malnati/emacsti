(add-to-list 'load-path "~/.emacsti/libs/js2-mode/")
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))
;; https://emacs.cafe/emacs/javascript/setup/2017/04/23/emacs-setup-javascript.html
;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
