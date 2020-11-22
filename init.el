
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
 '(doom-themes-enable-bold t)
 '(doom-themes-enable-italic t)
 '(doom-themes-visual-bell-config nil)
 '(expand-region t)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(fset (quote yes-or-no-p) t)
 '(global-display-line-numbers-mode t)
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
 '(load-theme (quote doom-city-lights) t)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(muse-project-alist nil)
 '(org-ascii-caption-above t)
 '(org-completion-use-ido t)
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file (concat org-directory emacsti-dotemacsfile-notes))
 '(org-dotemacs-dependency-inheritance t)
 '(org-dotemacs-exclude-todo "AVOID")
 '(org-hide-block-startup t)
 '(org-html-html5-fancy nil)
 '(org-mode t)
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets (quote ((org-agenda-files :level . 3))))
 '(org-refile-use-outline-path (quote file))
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
    (projectile lsp-javacomp lsp-java ## hydra company-lsp company helm-descbinds helm org org-gnome org-dotemacs org-web-tools org-ref org-re-reveal org-presie org-projectile-helm org-projectile org-pomodoro org-pdfview org-page org-mime org-make-toc org-linkany org-index org-edna org-elisp-help org-kanban org-dp org-beautify-theme org-alert plantuml-mode flycheck-plantuml ox-reveal org-re-reveal-ref oer-reveal graphviz-dot-mode ob-dar magit magithub zoom doom-themes)))
 '(pending-delete-mode t)
 '(recentf-mode 1)
 '(rectangle-preview t)
 '(save-place-mode t)
 '(setq-default indent-tabs-mode)
 '(show-paren-mode t)
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
 '(zoom-mode t))
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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray7" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 86 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
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
