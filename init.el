
;;--------------------------------------------------------------------
;;
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory
;;
(message "Starting for evaluating .emacs file!")
;;--------------------------------------------------------------------
;; Troubleshooting
;;--------------------------------------------------------------------
;; (byte-recompile-directory "~/.emacs.d/" 0 t)

;;--------------------------------------------------------------------
;; 
;;--------------------------------------------------------------------
(message "Evaluating .emacs file...")
;;--------------------------------------------------------------------
;; Custom defined variables
;;--------------------------------------------------------------------
(setq emacsti-homedir "~/")
(message
 (concat "Eval global var emacsti-homedir            → " emacsti-homedir))
(setq emacsti-emacsdir
      (concat emacsti-homedir  ".emacs.d/"))
(message
 (concat "Eval global var emacsti-emacsdir           → " emacsti-emacsdir))
(setq emacsti-dotemacslib
      (concat emacsti-emacsdir "org-dotemacs/org-dotemacs.el"))
(message
 (concat "Eval global var emacsti-dotemacslib        → " emacsti-dotemacslib))
(setq emacsti-dotemacsdir
      (concat emacsti-emacsdir "dotfiles/")
      )
(message
 (concat "Eval global var emacsti-dotemacsdir        → " emacsti-dotemacsdir))
(setq emacsti-dotemacsfile
      (concat emacsti-dotemacsdir  "dotemacs.org"))
(message
 (concat "Eval global var emacsti-dotemacsfile       → " emacsti-dotemacsfile))
(setq emacsti-dotemacsfile-index
      (concat emacsti-dotemacsdir ".custom-index.org"))
(message
 (concat "Eval global var emacsti-dotemacsfile-index → " emacsti-dotemacsfile-index))

(message "\nAll of custom variables loaded!")

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
 '(beacon-color "gold")
 '(beacon-fallback-background ((t (:background "dim gray"))))
 '(beacon-mode t)
 '(custom-safe-themes
   (quote
    ("37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" default)))
 '(delete-selection-mode 1)
 '(desktop-base-file-name "emacs-desktop")
 '(desktop-save t)
 '(desktop-save-mode t)
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
    (nord-theme all-the-icons-ivy-rich all-the-icons-ivy all-the-icons-ibuffer all-the-icons-gnus all-the-icons-dired neotree aggressive-indent helm-company yasnippet lsp-ui flycheck which-key projectile lsp-javacomp lsp-java ## hydra company-lsp company helm-descbinds helm org org-gnome org-dotemacs org-web-tools org-ref org-re-reveal org-presie org-projectile-helm org-projectile org-pomodoro org-pdfview org-page org-mime org-make-toc org-linkany org-index org-edna org-elisp-help org-kanban org-dp org-beautify-theme org-alert plantuml-mode flycheck-plantuml ox-reveal org-re-reveal-ref oer-reveal graphviz-dot-mode ob-dar magit magithub zoom doom-themes)))
 '(which-key-mode t)
 '(which-key-setup-side-window-right-bottom nil)
 '(yas-global-mode nil))
;;
(message "All packages initilized and selected!")

;; Frame, window, toolbar, menu custom-set-variables was added by Custom.
(message "\n Custom set for Frame, window, toolbar, menu loading... \n")
;; remove scroll bar
;; This variable controls whether and where to put vertical 
;; scroll bars in all frames. The possible values 
;; are nil for no scroll bars, left to put scroll 
;; bars on the left and right to put scroll bars on the right. 
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Scroll-Bars.html
(scroll-bar-mode -1)
(message "Removed scrolls!")
;; remove toolbar
(tool-bar-mode -1)
(message "Removed tool bar!")
(column-number-mode t)
(message "Showing colunm number!")
;; https://emacsredux.com/blog/2015/01/18/customizing-the-fringes/
;; make both fringes 12 pixels
(fringe-mode 12)
(message "Fringes sized to 12px!")
(setq display-line-numbers t)
(message "Showing line numbers!")
(global-display-line-numbers-mode t)
(message "Showing line numbers globally!")
(window-divider-mode t)
(message "Window divider ON!")
(setq buffers-menu-buffer-name-length 64)
(message "Buffers menu lenght sized to 64!")
(setq buffers-menu-max-size 32)
(message "Buffers menu sized to 32!")
(setq buffers-menu-show-directories t)
(message "Buffers menu show directories ON!")
(setq doc-view-continuous t)
(message "doc-view-continuous ON!")
(setq display-buffer-reuse-frames t)
(message "display-buffer-reuse-frames ON!")
;;(tool-bar-position (quote top))
(setq window-divider-default-bottom-width 1)
(message "window-divider-default-bottom-width ON!")
(setq window-divider-default-right-width 1)
(message "window-divider-default-right-width ON!")
(fset (quote yes-or-no-p) t)
(message "yes-or-no-p ON!")
(save-place-mode t)
(message "save-place-mode ON!")
(recentf-mode 1)
(message "recentf-mode ON!")
(setq delete-auto-save-files nil)
(message "delete-auto-save-files OFF!")
(setq delete-by-moving-to-trash t)
(message "delete-by-moving-to-trash ON!")
(setq auto-save-interval 100)
(message "auto-save-interval 100!")
(setq auto-save-visited-file-name t)
(message "auto-save-visited-file-name ON!")
(setq command-history-hook nil)
(message "command-history-hook OFF!")
(setq completions-file-versions-kept 9992)
(message "completions-file-versions-kept 9992!")
(setq history-length 2048)
(message "history-length 2048!")
(setq initial-buffer-choice t)
(message "initial-buffer-choice ON!")
(setq initial-frame-alist
      (quote
       ((tool-bar-position . none)
	(bottom-divider-width . 1)
	(right-divider-width . 1))))
(message "initial-frame-alist ON!")
(setq list-command-history-max 2048)
(message "list-command-history-max 2048!")
(setq undo-ask-before-discard t)
(message "undo-ask-before-discard ON!")
(setq undo-limit 9999999999999999)
(message "undo-limit 9999999999999999!")
(setq undo-outer-limit 99999999999999999)
(message "undo-outer-limit 99999999999999999!")
(setq undo-strong-limit 9999999999999999)
(message "undo-strong-limit 9999999999999999!")
(setq user-full-name "Ricardo Malnati")
(message "user-full-name Ricardo Malnati!")
(setq user-mail-address "ricardomalnati@gmail.com")
(message "user-mail-address ricardomalnati@gmail.com!")
(setq x-gtk-show-hidden-files t)
(message "x-gtk-show-hidden-files ON!")
(setq yank-menu-length 32)
(message "yank-menu-length 32!")
;; https://docs.projectile.mx/projectile/usage.html
(projectile-mode +1)
(message "projectile-mode ON!")
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-project-search-path '("~/projects/" "~/git/" "~/github/" "~/gitlab/"))
(setq projectile-sort-order 'recentf)

(add-hook 'after-init-hook 'global-company-mode)
(message "global-company-mode mode globally ON!")

;; https://github.com/arcticicestudio/nord-emacs
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'nord t)

(message "\n Custom set for Frame, window, toolbar, menu done! \n")
;;--------------------------------------------------------------------
;; Loading org-dotemacs
;;--------------------------------------------------------------------
;; git clone https://github.com/vapniks/org-dotemacs.git ~/.emacs.d/org-dotemacs
(if (file-exists-p emacsti-dotemacslib)
    (load-file emacsti-dotemacslib)
  (message (concat emacsti-dotemacslib " > Lib not found! You have to verify the dotemacslib variable defined in to .emacs file."))
  )
(message "Variable emacsti-dotemacslib loaded!")
(require 'org-dotemacs)
(setq dotemacs-mode t)
(message "")
(if (file-exists-p emacsti-dotemacsfile-index)
    (org-dotemacs-load-file nil emacsti-dotemacsfile-index)
  (message (concat emacsti-dotemacsfile-index " > File not found! You have to verify the dotemacsfile variable defined in to .emacs file."))
)
(message "All done!")

;;--------------------------------------------------------------------
;; End .emacs code
;;--------------------------------------------------------------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
