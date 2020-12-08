(add-to-list 'load-path "~/.emacsti/libs/company-mode/")
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
