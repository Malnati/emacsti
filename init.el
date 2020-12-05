;;; package --- init.el
;;; Commentary:
;;; Code:
(message "Starting for evaluating .init.el file!")

(load-file "~/.emacsti/libs/loaderpackages.el")
(load-file "~/.emacsti/libs/loadersolarizedemacs.el")
(load-file "~/.emacsti/libs/loaderpowerline.el")
(load-file "~/.emacsti/libs/loaderwhichkey.el")
(load-file "~/.emacsti/libs/loaderprojectile.el")
(load-file "~/.emacsti/libs/loaderflycheck.el")
(load-file "~/.emacsti/libs/loaderflycheckcolormodeline.el")
(load-file "~/.emacsti/libs/loaderpostip.el")
(load-file "~/.emacsti/libs/loaderflycheckpostip.el")
(load-file "~/.emacsti/libs/loaderflycheckstatusemoji.el")
(load-file "~/.emacsti/libs/loaderflycheckinline.el")
(load-file "~/.emacsti/libs/loaderquickpeek.el")
(load-file "~/.emacsti/libs/loaderexecpathfromshell.el")
(load-file "~/.emacsti/libs/loadercompany.el")
(load-file "~/.emacsti/libs/loaderaggressiveindent.el")
(load-file "~/.emacsti/libs/loadermultiplecursors.el")
(load-file "~/.emacsti/libs/loaderyasnippet.el")
(load-file "~/.emacsti/libs/loaderexpandregion.el")
(load-file "~/.emacsti/libs/loaderwebmode.el")
(load-file "~/.emacsti/libs/loadertypescript.el")
;; (load-file "~/.emacsti/libs/loaderrjsxmode.el")
;;(load-file "~/.emacsti/libs/loadertide.el")
;;(load-file "~/.emacsti/libs/loaderimportjs.el")

(load-file "~/.emacsti/layout.el")
(load-file "~/.emacsti/save.el")
(load-file "~/.emacsti/behavior.el")

(progn
 '(when (file-exists-p "~/.emacsti/custom.el")
    (load-file "~/.emacsti/custom.el")))

(provide 'init)
;;; init.el ends here
