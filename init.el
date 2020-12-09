;;; package --- init.el
;;; Commentary:
;;; Code:
(message "Starting for evaluating .init.el file!")

(load-file "~/.emacsti/libs/loaderpackages.el")

(load-file "~/.emacsti/layout.el")
(load-file "~/.emacsti/save.el")
(load-file "~/.emacsti/behavior.el")

(progn
    (load-file "~/.emacsti/custom.el"))

(provide 'init)
;;; init.el ends here
