
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

(load-file "~/.emacsti/customlayout.el")
(load-file "~/.emacsti/customsave.el")
(load-file "~/.emacsti/custombehavior.el")

;;--------------------------------------------------------------------
;; Loading packages
;;--------------------------------------------------------------------
(message "\nLoading packages...")
(require 'package)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aggressive-indent-mode nil t)
 '(global-flycheck-mode nil)
 '(package-archives
   (quote
    (("marmalade" . "http://marmalade-repo.org/packages/")
     ("marmalade-sec" . "https://marmalade-repo.org/packages/")
     ("elpa" . "http://elpa.gnu.org/packages/")
     ("elpa-sec" . "https://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("melpa-sec" . "https://melpa.org/packages/"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (nord-theme neotree aggressive-indent yasnippet flycheck which-key projectile hydra company  helm org org-gnome org-dotemacs org-web-tools org-ref org-re-reveal org-presie org-projectile-helm org-projectile org-pomodoro org-pdfview org-page org-mime org-make-toc org-linkany org-index org-edna org-elisp-help org-kanban org-dp org-beautify-theme org-alert)))
 '(which-key-mode t)
 '(which-key-setup-side-window-right-bottom t)
 '(yas-global-mode t))
;;(fset (quote yes-or-no-p) t)
;;(message "yes-or-no-p ON!")

(setq user-full-name "Ricardo Malnati")
(message "user-full-name Ricardo Malnati!")
(setq user-mail-address "ricardomalnati@gmail.com")
(message "user-mail-address ricardomalnati@gmail.com!")

(load-file "~/.emacsti/customprojectile.el")

(add-hook 'after-init-hook 'global-company-mode)
(message "global-company-mode mode globally ON!")
;;(global-flycheck-mode t)
(message "Flycheck mode globally ON!")

(load-file "~/.emacsti/customtheme.el")
