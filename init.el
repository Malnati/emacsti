
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

(setq mal-var-homedir             "~/"                                            )
(message (concat "Eval global var mal-var-homedir                  → " mal-var-homedir            ))

(setq mal-var-emacsdir            (concat mal-var-homedir  ".emacs.d/"                        ))
(message (concat "Eval global var mal-var-emacsdir                 → " mal-var-emacsdir           ))

(setq mal-var-emacs-backupdir     (concat mal-var-emacsdir "backups"                          ))
(message (concat "Eval global var mal-var-emacs-backupdir          → " mal-var-emacs-backupdir    ))

;; git clone https://github.com/vapniks/org-dotemacs.git ~/.emacs.d/org-dotemacs
(setq mal-var-dotemacslib         (concat mal-var-emacsdir "org-dotemacs/org-dotemacs.el"                  ))
(message (concat "Eval global var mal-var-dotemacslib              → " mal-var-dotemacslib        ))

(setq mal-var-dotemacsdir         (concat mal-var-emacsdir "dotfiles/"                        ))
(message (concat "Eval global var mal-var-dotemacsdir              → " mal-var-dotemacsdir        ))

(setq mal-var-dotemacsfile        (concat mal-var-dotemacsdir  "dotemacs.org"                 ))
(message (concat "Eval global var mal-var-dotemacsfile             → " mal-var-dotemacsfile       ))

(setq mal-var-dotemacsfile-alias       (concat mal-var-dotemacsdir ".custom-alias.org"           ))
(message (concat "Eval global var mal-var-dotemacsfile-alias       → " mal-var-dotemacsfile-alias      ))

(setq mal-var-dotemacsfile-archives    (concat mal-var-dotemacsdir ".custom-archives.org"        ))
(message (concat "Eval global var mal-var-dotemacsfile-archives    → " mal-var-dotemacsfile-archives ))

(setq mal-var-dotemacsfile-faces       (concat mal-var-dotemacsdir ".custom-faces.org"           ))
(message (concat "Eval global var mal-var-dotemacsfile-faces       → " mal-var-dotemacsfile-faces      ))

(setq mal-var-dotemacsfile-functions   (concat mal-var-dotemacsdir ".custom-functions.org"           ))
(message (concat "Eval global var mal-var-dotemacsfile-functions   → " mal-var-dotemacsfile-functions  ))

(setq mal-var-dotemacsfile-inbox       (concat mal-var-dotemacsdir ".custom-inbox.org"           ))
(message (concat "Eval global var mal-var-dotemacsfile-inbox       → " mal-var-dotemacsfile-inbox      ))

(setq mal-var-dotemacsfile-index       (concat mal-var-dotemacsdir ".custom-index.org"           ))
(message (concat "Eval global var mal-var-dotemacsfile-index       → " mal-var-dotemacsfile-index      ))

(setq mal-var-dotemacsfile-keybindings (concat mal-var-dotemacsdir ".custom-keybindings.org"     ))
(message (concat "Eval global var mal-var-dotemacsfile-keybindings → " mal-var-dotemacsfile-keybindings))

(setq mal-var-dotemacsfile-menu        (concat mal-var-dotemacsdir ".custom-menu.org"            ))
(message (concat "Eval global var mal-var-dotemacsfile-menu        → " mal-var-dotemacsfile-menu       ))

(setq mal-var-dotemacsfile-org-mode        (concat mal-var-dotemacsdir ".custom-org-mode.org"        ))
(message (concat "Eval global var mal-var-dotemacsfile-org-mode    → " mal-var-dotemacsfile-org-mode   ))

(setq mal-var-dotemacsfile-references  (concat mal-var-dotemacsdir ".custom-references.org"      ))
(message (concat "Eval global var mal-var-dotemacsfile-references  → " mal-var-dotemacsfile-references))

(setq mal-var-dotemacsfile-notes       (concat mal-var-dotemacsdir ".notes.org"                  ))
(message (concat "Eval global var mal-var-dotemacsfile-notes       → " mal-var-dotemacsfile-notes ))

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
(if (file-exists-p mal-var-dotemacslib)
    (load-file mal-var-dotemacslib)
  (message (concat mal-var-dotemacslib " > Lib not found! You have to verify the dotemacslib variable defined in to .emacs file."))
)
(message "Variable mal-var-dotemacslib loaded!")
(require 'org-dotemacs)
(setq dotemacs-mode t)
(message "")
(if (file-exists-p mal-var-dotemacsfile-index)
    (org-dotemacs-load-file nil mal-var-dotemacsfile-index)
  (message (concat mal-var-dotemacsfile-index " > File not found! You have to verify the dotemacsfile variable defined in to .emacs file."))
)
(message "All done!")

;;--------------------------------------------------------------------
;; End .emacs code
;;--------------------------------------------------------------------
