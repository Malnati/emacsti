(add-to-list 'load-path "~/.emacsti/libs/xref-js2/")
(require 'xref-js2)
;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so unbind it.
(define-key js-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda ()
(add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
