
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
 '(add-hook (quote after-init-hook) t)
 '(aggressive-indent-mode nil t)
 '(delete-selection-mode 1)
 '(global-flycheck-mode nil)
 '(global-visual-line-mode t)
 '(org-startup-with-beamer-mode t)
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
;;

(setq doc-view-continuous t)
(message "doc-view-continuous ON!")
;;(fset (quote yes-or-no-p) t)
;;(message "yes-or-no-p ON!")
(setq delete-auto-save-files nil)
(message "delete-auto-save-files OFF!")
(setq delete-by-moving-to-trash t)
(message "delete-by-moving-to-trash ON!")
(setq initial-buffer-choice t)
(message "initial-buffer-choice ON!")
(setq user-full-name "Ricardo Malnati")
(message "user-full-name Ricardo Malnati!")
(setq user-mail-address "ricardomalnati@gmail.com")
(message "user-mail-address ricardomalnati@gmail.com!")
(setq x-gtk-show-hidden-files t)
(message "x-gtk-show-hidden-files ON!")
;; https://docs.projectile.mx/projectile/usage.html
(projectile-mode +1)
(message "projectile-mode ON!")
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-project-search-path '("~/.emacs.d/"))
(setq projectile-sort-order 'recentf)

(add-hook 'after-init-hook 'global-company-mode)
(message "global-company-mode mode globally ON!")
;;(global-flycheck-mode t)
(message "Flycheck mode globally ON!")
(setq tab-always-indent 'complete)
(message "tab-always-indent 'complete!")

;; https://github.com/arcticicestudio/nord-emacs
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'nord t)

;;--------------------------------------------------------------------
;; Loading org-dotemacs
;;--------------------------------------------------------------------
;; git clone https://github.com/vapniks/org-dotemacs.git ~/.emacs.d/org-dotemacs
;; (if (file-exists-p emacsti-dotemacslib)
;;     (load-file emacsti-dotemacslib)
;;   (message (concat emacsti-dotemacslib " > Lib not found! You have to verify the dotemacslib variable defined in to .emacs file."))
;;   )
;; (message "Variable emacsti-dotemacslib loaded!")
;; (require 'org-dotemacs)
;; (setq dotemacs-mode t)
;; (message "")
;; (if (file-exists-p emacsti-dotemacsfile-index)
;;     (org-dotemacs-load-file nil emacsti-dotemacsfile-index)
;;   (message (concat emacsti-dotemacsfile-index " > File not found! You have to verify the dotemacsfile variable defined in to .emacs file."))
;; )
;; (message "All done!")

;;--------------------------------------------------------------------
;; End .emacs code
;;--------------------------------------------------------------------
