;;; package --- init.el
;;; Commentary:
;;; Code:

(load-file "~/.emacs.d/.packages.el")
(load-file "~/.emacs.d/.faces.el")
(load-file "~/.emacs.d/.save.el")
(load-file "~/.emacs.d/custom.el")

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (use-package projectile flycheck flx-ido which-key spaceline-all-the-icons nord-theme multiple-cursors expand-region company all-the-icons-ibuffer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
