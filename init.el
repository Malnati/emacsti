
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
(setq emacsti-homedir             "~/"                                            )
(message (concat "Eval global var emacsti-homedir                  → " emacsti-homedir            ))

(setq emacsti-emacsdir            (concat emacsti-homedir  ".emacs.d/"                        ))
(message (concat "Eval global var emacsti-emacsdir                 → " emacsti-emacsdir           ))

(setq emacsti-dotemacslib         (concat emacsti-emacsdir "org-dotemacs/org-dotemacs.el"                  ))
(message (concat "Eval global var emacsti-dotemacslib              → " emacsti-dotemacslib        ))

(setq emacsti-dotemacsdir         (concat emacsti-emacsdir "dotfiles/"                        ))
(message (concat "Eval global var emacsti-dotemacsdir              → " emacsti-dotemacsdir        ))

(setq emacsti-dotemacsfile        (concat emacsti-dotemacsdir  "dotemacs.org"                 ))
(message (concat "Eval global var emacsti-dotemacsfile             → " emacsti-dotemacsfile       ))

(setq emacsti-dotemacsfile-index       (concat emacsti-dotemacsdir ".custom-index.org"           ))
(message (concat "Eval global var emacsti-dotemacsfile-index       → " emacsti-dotemacsfile-index      ))

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
 '(package-archives
   (quote
    (
     ("marmalade"     . "http://marmalade-repo.org/packages/")
     ("marmalade-sec" . "https://marmalade-repo.org/packages/")
     ("elpa"          . "http://elpa.gnu.org/packages/")
     ("elpa-sec"      . "https://elpa.gnu.org/packages/")
     ("melpa"         . "http://melpa.org/packages/")
     ("melpa-sec"     . "https://melpa.org/packages/")
    )
   )
  )
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (lsp-javacomp lsp-java ## hydra company-lsp company helm-descbinds helm org org-gnome org-dotemacs org-web-tools org-ref org-re-reveal org-presie org-projectile-helm org-projectile org-pomodoro org-pdfview org-page org-mime org-make-toc org-linkany org-index org-edna org-elisp-help org-kanban org-dp org-beautify-theme org-alert plantuml-mode flycheck-plantuml ox-reveal org-re-reveal-ref oer-reveal graphviz-dot-mode ob-dar magit magithub zoom doom-themes)))
 )
;;
(message "All packages initilized and selected!")

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
