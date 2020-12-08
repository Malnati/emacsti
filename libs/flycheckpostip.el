(add-to-list 'load-path "~/.emacsti/libs/flycheck-pos-tip/")
(require 'flycheck-pos-tip)

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))
