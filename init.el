
;;--------------------------------------------------------------------
;;
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory
;;
(message "Starting for evaluating .init.el file!")

(load-file "~/.emacsti/libs/loaderpackages.el")
(load-file "~/.emacsti/libs/loaderwhichkey.el")
(load-file "~/.emacsti/libs/loaderprojectile.el")
(load-file "~/.emacsti/libs/loaderflycheck.el")
(load-file "~/.emacsti/libs/loaderexecpathfromshell.el")
(load-file "~/.emacsti/libs/loadercompany.el")
(load-file "~/.emacsti/libs/loaderaggressiveindent.el")
(load-file "~/.emacsti/libs/loadernordtheme.el")
(load-file "~/.emacsti/libs/loadermultiplecursors.el")
(load-file "~/.emacsti/libs/loaderyasnippet.el")

(load-file "~/.emacsti/layout.el")
(load-file "~/.emacsti/save.el")
(load-file "~/.emacsti/behavior.el")

(progn
 '(when (file-exists-p "~/.emacsti/custom.el")
    (load-file "~/.emacsti/custom.el")))