(add-to-list 'load-path "~/.emacsti/dependencies/company-mode/")
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
