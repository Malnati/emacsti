
;;--------------------------------------------------------------------
;;
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory
;;
(message "Starting for evaluating .init.el file!")

;;--------------------------------------------------------------------
;; Custom defined variables
;;--------------------------------------------------------------------
(setq emacsti-homedir "~/")
(message
 (concat "emacsti-homedir            → " emacsti-homedir))
(setq emacsti-emacsdir
      (concat emacsti-homedir  ".emacs.d/"))
(message
 (concat "emacsti-emacsdir           → " emacsti-emacsdir))
(setq emacsti-dotemacslib
      (concat emacsti-emacsdir "org-dotemacs/org-dotemacs.el"))
(message
 (concat "emacsti-dotemacslib        → " emacsti-dotemacslib))
(setq emacsti-dotemacsdir
      (concat emacsti-emacsdir "dotfiles/"))
(message
 (concat "emacsti-dotemacsdir        → " emacsti-dotemacsdir))
(setq emacsti-dotemacsfile
      (concat emacsti-dotemacsdir  "dotemacs.org"))
(message
 (concat "emacsti-dotemacsfile       → " emacsti-dotemacsfile))
(setq emacsti-dotemacsfile-index
      (concat emacsti-dotemacsdir ".custom-index.org"))
(message
 (concat "emacsti-dotemacsfile-index → " emacsti-dotemacsfile-index))

;;--------------------------------------------------------------------
;; Loading packages
;;--------------------------------------------------------------------
(message "\nLoading packages...")
(require 'package)
(package-initialize)

;;(fset (quote yes-or-no-p) t)
;;(message "yes-or-no-p ON!")

(setq user-full-name "Ricardo Malnati")
(message "user-full-name Ricardo Malnati!")
(setq user-mail-address "ricardomalnati@gmail.com")
(message "user-mail-address ricardomalnati@gmail.com!")

(load-file "~/.emacsti/custompackages.el")

(load-file "~/.emacsti/customlayout.el")
(load-file "~/.emacsti/customsave.el")
(load-file "~/.emacsti/custombehavior.el")
(load-file "~/.emacsti/customwhichkey.el")

(load-file "~/.emacsti/customprojectile.el")
;;(load-file "~/.emacsti/customflycheck.el")
(load-file "~/.emacsti/customcompany.el")
(load-file "~/.emacsti/customaggressivemodeindent.el")
(load-file "~/.emacsti/customtheme.el")

(eval-buffer)

