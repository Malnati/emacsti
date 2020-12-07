(add-to-list 'load-path "~/.emacsti/libs/flycheck-color-mode-line/")
(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))