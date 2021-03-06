;; https://github.com/joaotavora/yasnippet
(add-to-list 'load-path
              "~/.emacsti/libs/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; OR, keeping YASnippet defaults try out ~/Downloads/interesting-snippets
(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacsti/libs/yasnippet-snippets-0.23/snippets")))

