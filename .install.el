;;; packages --- .install.el
;;; Commentary:
;;; Code:

(add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
(package-refresh-contents)

(when (member window-system '(ns darwin))
  (use-package exec-path-from-shell
    :ensure
    :config
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :ensure)

(use-package multiple-cursors
  :ensure)

(use-package hydra
  :ensure)

(use-package ivy
  :ensure)

(use-package avy
  :ensure)

(use-package which-key
  :ensure)

(use-package company
  :ensure)

(use-package dap-mode :ensure)

(use-package treemacs :ensure)

(use-package treemacs-projectile
  :ensure)

(use-package nord-theme
  :ensure)

(use-package s
  :ensure)

(use-package memoize
  :ensure)

(use-package dash
  :ensure)

(use-package all-the-icons
  :ensure)

(use-package all-the-icons-ibuffer
  :ensure)

(use-package company-box
  :ensure)

(use-package indent-guide
  :ensure)

(use-package drag-stuff
  :ensure)

(use-package projectile
  :ensure)

(use-package yasnippet
  :ensure)

(use-package yasnippet-snippets
  :ensure)

(use-package flycheck
  :ensure)

(use-package helm
  :ensure)

(use-package lsp-mode
  :ensure)
  
(use-package lsp-ui
  :ensure)

(use-package helm-lsp
  :ensure)

(use-package helm-projectile
  :ensure)

(use-package js2-mode
  :ensure)

(use-package js2-refactor
  :ensure)

(use-package xref-js2
  :ensure)

(use-package json-mode
  :ensure)

(use-package treemacs-projectile 
  :after lsp-mode)

(use-package company-box 
  :after company-mode 
  :after lsp-mode 
  :hook (company-mode . company-box-mode)  
  :config (progn
	    (setq company-box-icons-unknown 'fa_question_circle)
	    (setq company-box-icons-elisp
		  '((fa_tag :face font-lock-function-name-face) ;; Function
		    (fa_cog :face font-lock-variable-name-face) ;; Variable
		    (fa_cube :face font-lock-constant-face) ;; Feature
		    (md_color_lens :face font-lock-doc-face))) ;; Face
	    (setq company-box-icons-yasnippet 'fa_bookmark)
	    (setq company-box-icons-lsp
		  '((1 . fa_text_height) ;; Text
		    (2 . (fa_tags :face font-lock-function-name-face)) ;; Method
		    (3 . (fa_tag :face font-lock-function-name-face)) ;; Function
		    (4 . (fa_tag :face font-lock-function-name-face)) ;; Constructor
		    (5 . (fa_cog :foreground "#FF9800")) ;; Field
		    (6 . (fa_cog :foreground "#FF9800")) ;; Variable
		    (7 . (fa_cube :foreground "#7C4DFF")) ;; Class
		    (8 . (fa_cube :foreground "#7C4DFF")) ;; Interface
		    (9 . (fa_cube :foreground "#7C4DFF")) ;; Module
		    (10 . (fa_cog :foreground "#FF9800")) ;; Property
		    (11 . md_settings_system_daydream) ;; Unit
		    (12 . (fa_cog :foreground "#FF9800")) ;; Value
		    (13 . (md_storage :face font-lock-type-face)) ;; Enum
		    (14 . (md_closed_caption :foreground "#009688")) ;; Keyword
		    (15 . md_closed_caption) ;; Snippet
		    (16 . (md_color_lens :face font-lock-doc-face)) ;; Color
		    (17 . fa_file_text_o) ;; File
		    (18 . md_refresh) ;; Reference
		    (19 . fa_folder_open) ;; Folder
		    (20 . (md_closed_caption :foreground "#009688")) ;; EnumMember
		    (21 . (fa_square :face font-lock-constant-face)) ;; Constant
		    (22 . (fa_cube :face font-lock-type-face)) ;; Struct
		    (23 . fa_calendar) ;; Event
		    (24 . fa_square_o) ;; Operator
		    (25 . fa_arrows)) ;; TypeParameter
		  )))


  (use-package lsp-mode    
    :ensure)

(use-package lsp-ui 
  :ensure)

(use-package helm-lsp
  :ensure)

(use-package lsp-java
  :ensure)

;;; .install.el ends here
