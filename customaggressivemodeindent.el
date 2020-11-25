(add-to-list 'load-path "~/.emacsti/dependencies/aggressive-indent-mode/")

(require 'aggressive-indent)

(aggressive-indent-mode t) 

(add-to-list
 'aggressive-indent-dont-indent-if
 '(and (derived-mode-p 'c++-mode)
       (null (string-match "\\([;{}]\\|\\b\\(if\\|for\\|while\\)\\b\\)"
			   (thing-at-point 'line)))))
