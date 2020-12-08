;; https://github.com/Galooshi/emacs-import-js/blob/master/README.md#configuration
(add-to-list 'load-path "~/.emacsti/libs/emacs-import-js-2.0.0/plugin/")
(require 'import-js)

;; (define-prefix-command 'my-keymap)
;; (global-set-key (kbd "s-a") 'my-keymap)
;; (define-key my-keymap (kbd "a u") 'import-js-import)


;; Go directly to a file
;; The ImportJS goto interface allows us to jump to a package
;; (M-x) import-js-goto will jump to the appropriate file found by ImportJS
;; This should also be bound to something useful: (global-set-key (kbd "<f4>") 'import-js-goto)
(global-set-key (kbd "<f8>") 'import-js-goto)

;; Fix your imports
;; Optionally, you can configure ImportJS to fix your imports for you, adding unknown variables and removing unused imports. ImportJS uses eslint to find these variables.
;; eslint must be in your PATH.
;; eslint plugins must be installed for that specific version of eslint (if eslint is a global eslint, you may need to install the plugins globally)
;; Run with (M-x) import-js-fix
;; You can also configure import-js-fix to run on save: (add-hook 'after-save-hook 'import-js-fix)
(add-hook 'after-save-hook 'import-js-fix)