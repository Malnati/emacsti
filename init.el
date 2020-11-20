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
 '(auto-save-interval 100)
 '(auto-save-visited-file-name t)
 '(beacon-color "gold")
 '(beacon-mode t)
 '(buffers-menu-buffer-name-length 64)
 '(buffers-menu-max-size 32)
 '(buffers-menu-show-directories t)
 '(column-number-mode t)
 '(command-history-hook nil)
 '(completions-file-versions-kept 9992)
 '(custom-enabled-themes (quote (wombat)))
 '(default-frame-alist
    (quote
     ((tool-bar-position . none)
      (bottom-divider-width . 1)
      (right-divider-width . 1))))
 '(delete-auto-save-files nil)
 '(delete-by-moving-to-trash t)
 '(desktop-base-file-name "emacs-desktop")
 '(desktop-save t)
 '(desktop-save-mode t)
 '(display-buffer-reuse-frames t)
 '(display-line-numbers t)
 '(doc-view-continuous t)
 '(expand-region t)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(fset (quote yes-or-no-p) t)
 '(global-display-line-numbers-mode t)
 '(global-hl-line-mode t)
 '(global-hl-line-sticky-flag t)
 '(global-set-key [3 100] t)
 '(global-visual-line-mode t)
 '(history-length 2048)
 '(hl-line-sticky-flag nil)
 '(icomplete-mode t)
 '(indicate-empty-lines t)
 '(inhibit-startup-buffer-menu nil)
 '(initial-buffer-choice t)
 '(initial-frame-alist
   (quote
    ((tool-bar-position . none)
     (bottom-divider-width . 1)
     (right-divider-width . 1))))
 '(list-command-history-max 2048)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(muse-project-alist nil)
 '(org-agenda-files
   (quote
    (mal-var-dotemacsfile-alias mal-var-dotemacsfile-archives mal-var-dotemacsfile-faces mal-var-dotemacsfile-inbox mal-var-dotemacsfile-index mal-var-dotemacsfile-keybindings mal-var-dotemacsfile-menu mal-var-dotemacsfile-mode mal-var-dotemacsfile-references)))
 '(org-ascii-caption-above t)
 '(org-capture-templates
   (quote
    (("M" "Malnati's master template for storing stuffs." entry
      (file  "~/.emacs.d/agenda/notes.org") 
      "" :jump-to-captured t :empty-lines 1 :empty-lines-before 1 :empty-lines-after 1 :immediate-finish 1 :clock-in 1)
     ("D" "Dotfiles references." entry
      (file mal-var-dotemacsfile-references)
      "" :jump-to-captured t :empty-lines 1 :empty-lines-before 1 :empty-lines-after 1 :immediate-finish 1 :clock-in 1))))
 '(org-completion-use-ido t)
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file (concat org-directory mal-var-dotemacsfile-notes)) 
 '(org-dotemacs-dependency-inheritance t)
 '(org-dotemacs-exclude-todo "AVOID")
 '(org-hide-block-startup t)
 '(org-html-html5-fancy nil)
 '(org-mode t)
;; '(org-plantuml-jar-path "mal-var-emacsdir" "/plantuml.jar")
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets (quote ((org-agenda-files :level . 3))))
 '(org-refile-use-outline-path (quote file))
;; '(org-reveal-root "file://mal-var-emacsdir.emacs.d/reveal.js")
 '(org-startup-folded t)
 '(org-startup-with-beamer-mode t)
 '(org-startup-with-inline-images t)
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
    (hydra company-lsp company helm-descbinds helm org org-gnome org-dotemacs org-web-tools org-ref org-re-reveal org-presie org-projectile-helm org-projectile org-pomodoro org-pdfview org-page org-mime org-make-toc org-linkany org-index org-edna org-elisp-help org-kanban org-dp org-beautify-theme org-alert plantuml-mode flycheck-plantuml ox-reveal org-re-reveal-ref oer-reveal graphviz-dot-mode ob-dar magit magithub zoom)))
 '(pending-delete-mode t)
 '(recentf-mode 1)
 '(rectangle-preview t)
 '(save-place-mode t)
 '(setq-default indent-tabs-mode)
 '(show-paren-mode t)
 '(subword-mode t)
 '(term-buffer-maximum-size 8192)
 '(term-char-mode-buffer-read-only nil)
 '(tool-bar-mode t)
 '(tool-bar-position (quote top))
 '(tooltip-reuse-hidden-frame t)
 '(undo-ask-before-discard t)
 '(undo-limit 9999999999999999)
 '(undo-outer-limit 99999999999999999)
 '(undo-strong-limit 9999999999999999)
 '(user-full-name "Ricardo Malnati")
 '(user-mail-address "ricardomalnati@gmail.com")
 '(window-divider-default-bottom-width 1)
 '(window-divider-default-right-width 1)
 '(window-divider-mode t)
 '(x-gtk-show-hidden-files t)
 '(x-stretch-cursor t)
 '(yank-menu-length 32)
 '(zoom-mode t)
 )
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
(if (file-exists-p mal-var-dotemacsfile)
    (org-dotemacs-load-file nil mal-var-dotemacsfile)
  (message (concat mal-var-dotemacsfile " > File not found! You have to verify the dotemacsfile variable defined in to .emacs file."))
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
 '(default ((t (:inherit nil :stipple nil :background "gray7" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 102 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(beacon-fallback-background ((t (:background "dim gray"))))
 '(button ((t (:background "#333333" :foreground "white"))))
 '(cursor ((t (:background "gray25" :foreground "white"))))
 '(highlight ((t (:background "gray5" :foreground "#ffffff" :underline "dim gray"))))
 '(hl-line ((t (:background "black" :foreground "gainsboro"))))
 '(isearch ((t (:background "dark orange" :foreground "black"))))
 '(lazy-highlight ((t (:background "dark orange" :foreground "black"))))
 '(line-number ((t (:inherit (shadow default) :foreground "gray15"))))
 '(line-number-current-line ((t (:foreground "dark orange"))))
 '(match ((t (:background "orange" :foreground "black"))))
 '(mode-line ((t (:background "black" :foreground "gainsboro"))))
 '(mode-line-emphasis ((t (:background "black" :foreground "yellow" :weight bold))))
 '(mode-line-highlight ((t (:background "black" :foreground "yellow" :box (:line-width 2 :color "gold" :style released-button)))))
 '(mode-line-inactive ((t (:inherit default :background "#444444" :foreground "gray10"))))
 '(package-status-incompat ((t (:foreground "red"))))
 '(query-replace ((t (:background "dark orange" :foreground "black"))))
 '(rectangle-preview ((t (:inherit region :background "steel blue" :foreground "black"))))
 '(show-paren-match ((t (:background "dark orange" :foreground "black"))))
 '(show-paren-mismatch ((t (:background "red" :foreground "yellow"))))
 '(strokes-char ((t (:background "gray2"))))
 '(tooltip ((t (:background "black" :foreground "dark olive green"))))
 '(tty-menu-disabled-face ((t (:background "black" :foreground "lightgray"))))
 '(tty-menu-enabled-face ((t (:background "black" :foreground "yellow" :weight bold))))
 '(window-divider-first-pixel ((t (:foreground "gray10")))))

