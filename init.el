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
    (spaceline-all-the-icons all-the-icons-ibuffer all-the-icons spaceline nord-theme company which-key multiple-cursors expand-region projectile flycheck flx-ido))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
