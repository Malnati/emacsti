
(use-package which-key
  :after lsp-mode
  :config  (progn
	     (with-eval-after-load 'lsp-mode
	       (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))))

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

(progn
  (setq lsp-keymap-prefix "M-l")
  (use-package lsp-mode    
    :hook    ((js2-mode . lsp-mode)
	      (lsp-mode . lsp-enable-which-key-integration)) 
    :commands lsp  
    :config (progn
	      ;; Enable/disable snippet completion support.
	      (setq lsp-enable-snippet t)
	      ;; Display all of the info returned by document/onHover. If this is nil, eldoc will show only the symbol information.
	      (setq lsp-eldoc-render-all t)
	      ;; Enable completion-at-point integration.
	      (setq lsp-enable-completion-at-point t)
	      ;; Specifies which package to use for diagnostics. Choose from :auto, :flycheck, :flymake and :none. Default is :auto which means use :flycheck if present and fallback to :flymake.
	      (setq lsp-diagnostics-provider :flycheck)
	      ;; Indent regions using the file formatting functionality provided by the language server.
	      (setq lsp-enable-indentation nil)
	      ;; Enable textDocument/onTypeFormatting integration.
	      (setq lsp-enable-on-type-formatting nil)
	      ;; f non-nil, lsp-mode will apply edits suggested by the language server
	      ;; before saving a document.
	      (setq lsp-before-save-edits nil)
	      ;; Display the symbol's container name in an imenu entry.
	      (setq lsp-imenu-show-container-name t)
	      ;; Separator string to use to separate the container name from the symbol while displaying imenu entries.
	      (setq lsp-imenu-container-name-separator t)
	      ;; How to sort the imenu items. The value is a list of kind, name or position. Priorities are determined by the index of the element.
	      (setq lsp-imenu-sort-methods 1)
	      ;; Number of seconds to wait for a response from the language server before timing out.
	      (setq lsp-response-timeout 5)
	      ;; If non-nil lsp-mode will watch the files in the workspace if the server has requested that.
	      (setq lsp-enable-file-watchers t)
	      ;; Request trace mode on the language server.
	      (setq lsp-server-trace t)
	      ;; Enable experimental semantic highlighting support
	      (setq lsp-semantic-highlighting t)
	      ;; If non-nil, automatically enable imenu integration when server provides textDocument/documentSymbol.
	      (setq lsp-enable-imenu t)
	      ;; Auto activate signature when trigger conditions are meet.
	      (setq lsp-signature-auto-activate 1)
	      ;; Include signature documentation in signature help.
	      (setq lsp-signature-render-documentation 1)
	      ;; Enable textDocument/documentColor when server supports it.
	      (setq lsp-enable-text-document-color 1)
	      ;; Enable lsp-headerline-breadcrumb-mode.
	      (setq lsp-headerline-breadcrumb-enable 1)
	      ;; (with-eval-after-load 'lsp-mode (mapc #'lsp-flycheck-add-mode '(js2-mode)))
	      )))

(use-package lsp-ui 
  :after lsp-mode  
  :config (progn
	    ;; show the directory of files
	    ;; (lsp-ui-peek-show-directory 1)
	    ;; enable ‘lsp-ui-peek’
	    (lsp-ui-peek-enable 1)
	    ;; enable lsp-ui-doc
	    (lsp-ui-doc-enable 1)
	    ;; Where to display the doc
	    (setq lsp-ui-doc-position 1)
	    ;; Number of seconds before showing the doc
	    (setq lsp-ui-doc-delay 1)
	    ;; show diagnostics messages in sideline
	    (setq lsp-ui-sideline-show-diagnostics 1)
	    ;; show hover messages in sideline
	    (setq lsp-ui-sideline-show-hover 1)
	    ;; show code actions in sideline
	    (setq lsp-ui-sideline-show-code-actions 1)
	    ;; When set to 'line' the information will be updated when user changes current line otherwise the information will be updated when user changes current point
	    (setq lsp-ui-sideline-update-mode t)
	    ;; seconds to wait before showing sideline
	    (setq lsp-ui-sideline-delay 0)
	    ;; keystrokes
	    (define-prefix-command 'lsp)
	    (global-set-key (kbd "M-l") 'lsp)
	    (define-key lsp (kbd "d") 'lsp-ui-peek-find-definitions)
	    (define-key lsp (kbd "r") 'lsp-ui-peek-find-references)
	    (define-key lsp (kbd "i") 'lsp-ui-peek-find-implementation)
	    (define-key lsp (kbd "w") 'lsp-ui-peek-find-workspace-symbol)
	    (define-key lsp (kbd "<left>") 'lsp-ui-peek-jump-backward)
	    (define-key lsp (kbd "<right>") 'lsp-ui-peek-jump-forward)))

(use-package helm-lsp 
  :after helm 
  :after lsp-mode  
  :config (progn
	    (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol)))

;; (use-package lsp-java
;;   :config (progn ))

;;; .defer.el ends here
