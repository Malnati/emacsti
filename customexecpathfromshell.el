;; https://github.com/purcell/exec-path-from-shell
(add-to-list 'load-path "~/.emacsti/dependencies/exec-path-from-shell-1.12")

(custom-set-variables
 '(when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
 '(when (daemonp)
    (exec-path-from-shell-initialize))
)
