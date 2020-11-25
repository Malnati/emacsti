;; https://github.com/arcticicestudio/nord-emacs
(add-to-list 'load-path "~/.emacsti/dependencies/nord-emacs/")
(require 'nord-theme)
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(message "→ custom-theme-load-path to ~/.emacs.d/themes/ ON!")

(load-theme 'nord t)
(message "→ load-theme 'nord t ON!")
