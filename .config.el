(use-package dashboard
  :config (progn
	    (dashboard-setup-startup-hook)
	    (setq dashboard-center-content t)
	    (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (registers . 5)))
	    (setq dashboard-set-heading-icons t)
	    (setq dashboard-set-file-icons t)
	    (setq dashboard-set-navigator t)))

(when (member system-type '(ns darwin))
  (use-package exec-path-from-shell
    :config (progn
	      (exec-path-from-shell-initialize))))

(use-package expand-region 
  :config (progn
	    (global-set-key (kbd "C-=") 'er/expand-region)))

(use-package multiple-cursors 
  :config (progn
	    (define-prefix-command 'mc)
	    (global-set-key (kbd "C-c m") 'mc)
	    (define-key mc  (kbd "a") 'mc/mark-all-like-this)
	    (define-key mc  (kbd "n") 'mc/mark-next-like-this)
	    (define-key mc  (kbd "p") 'mc/mark-previous-like-this)
	    (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)))

(use-package ivy 
  :after hydra)

(use-package avy
  :init 
  :bind ("M-s" . avy-goto-char))

(use-package which-key
  :init (progn
	  "Defaul settings for which-key mode."
	  (which-key-mode)
	  (which-key-setup-side-window-right-bottom)
	  ;; max width of which-key window, when displayed at left or right.
	  ;; valid values: number of columns (integer), or percentage out of current
	  ;; frame's width (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-width 0.4)
	  ;; max height of which-key window, when displayed at top or bottom.
	  ;; valid values: number of lines (integer), or percentage out of current
	  ;; frame's height (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-height 0.25))
  :config  (progn
	     "Keytrokes settings" 
	     (progn 
	       "Keytrokes definitions"
	       (global-set-key (kbd "C-c c") 'copy-line)
	       (global-set-key (kbd "C-c d") 'duplicate-line)
	       (global-set-key (kbd "C-c e b") 'eval-buffer)
	       (global-set-key (kbd "C-c e r") 'eval-region)
	       (global-set-key (kbd "C-c f i") 'indent-region)
	       (global-set-key (kbd "C-c m l") 'select-line)
	       (global-set-key (kbd "C-z")   'undo)
	       (global-set-key [(control shift meta up)]   'text-scale-increase)
	       (global-set-key [(control shift meta down)] 'text-scale-decrease)
	       (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
	       (eval-after-load 'company
		 '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))
	       (drag-stuff-define-keys)
	       (global-set-key [(meta up)]   'drag-stuff-up)
	       (global-set-key (kbd "M-x") 'helm-M-x)
	       (global-set-key [(meta down)] 'drag-stuff-down)
	       (define-prefix-command 'js2-keys)
	       (global-set-key (kbd "C-c C-j") 'js2-keys)
	       ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "p") 'json-mode-show-path)
	       ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "P") 'json-mode-kill-path)
	       (progn
		 "xref-js2 keytrokes definitions"
		 (define-prefix-command 'xref-js2)
		 (global-set-key (kbd "C-c x") 'xref-js2)
		 (define-key xref-js2 (kbd "a")   'js2-mode-show-all) 
		 (define-key xref-js2 (kbd "g")   'xref-revert-buffer) 
		 (define-key xref-js2 (kbd "j")   'js2-jump-to-definition) 
		 (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point) 
		 (define-key xref-js2 (kbd "s")   'js2-mode-show-element)
		 )
	       )
	     (progn 
	       "Keytrokes descriptions"
	       (which-key-add-key-based-replacements "C-c c" "copy line")
	       (which-key-add-key-based-replacements "C-c d" "duplicate line")
	       (which-key-add-key-based-replacements "C-c e" "eval")
	       (which-key-add-key-based-replacements "C-c e b" "eval buffer")
	       (which-key-add-key-based-replacements "C-c e r" "eval region")
	       (which-key-add-key-based-replacements "C-c f" "format")
	       (which-key-add-key-based-replacements "C-c f i" "indent region")
	       (which-key-add-key-based-replacements "C-c p" "project")
	       (which-key-add-key-based-replacements "C-c m" "mark")
	       (which-key-add-key-based-replacements "C-c m l" "mark line")
	       (which-key-add-key-based-replacements "C-z" "undo") )))
	     
(use-package company  
  :config (progn
	    (setq company-minimum-prefix-length 1 company-idle-delay 0.0)
	    (add-hook 'after-init-hook 'global-company-mode)))

(use-package treemacs-projectile 
  :after treemacs)

(use-package company-box 
  :after company-mode 
  :hook (company-mode . company-box-mode)  
  :config (progn
	    (setq company-box-icons-unknown 'fa_question_circle)
	    (setq company-box-icons-elisp
		  '((fa_tag :face font-lock-function-name-face) ;; Function
		    (fa_cog :face font-lock-variable-name-face) ;; Variable
		    (fa_cube :face font-lock-constant-face) ;; Feature
		    (md_color_lens :face font-lock-doc-face))) ;; Face
	    (setq company-box-icons-yasnippet 'fa_bookmark)))
;; TODO FIX
(use-package company-quickhelp
  :config (progn
	    (company-quickhelp-mode)
	    ))

(use-package nord-theme  
  :config (progn
	    (add-to-list 'custom-theme-load-path
			 (expand-file-name "~/.emacs.d/themes/"))
	    (load-theme 'nord t)))

(use-package indent-guide  
  :config (progn
	    (indent-guide-global-mode)
	    (setq indent-guide-char "|")))

(use-package drag-stuff  
  :config (progn
	    (drag-stuff-global-mode 1)))

(use-package projectile  
  :config (progn
	    (projectile-mode +1)
	    (setq projectile-sort-order 'recentf)))

(use-package yasnippet
  :config (progn
	    (yas-reload-all)
	    (add-hook 'prog-mode-hook #'yas-minor-mode)
	    (yas-global-mode 1)))

(use-package yasnippet-snippets
  :after yasnippet
  :config (progn
	    (when (member system-type '(pc w32 ms-dos windows-nt cygwin))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-mswin/yasnippet-snippets-20201221.849/snippets"))))
	    (when (member system-type '(gnu/linux gnu x))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-linux/yasnippet-classic-snippets-1.0.2")))
	      (setq yas-snippet-dirs
		    (append yas-snippet-dirs
			    '("~/.emacs.d/libs/elpa-linux/snippet-20130210.2315"))))))

(use-package flycheck  
  :config (progn
	    (flycheck-mode t)
	    (setq global-flycheck-mode t)))

(progn
  (defun helm-buffer-face-mode ()
    "Helm buffer face"
    (interactive)
    (with-helm-buffer
      (setq line-spacing 2)
      (buffer-face-set '(:height 87))))
  (use-package helm  
    :config (progn
	      (add-hook 'helm-update-hook 'helm-buffer-face-mode))))

(use-package helm-projectile  
  :config (progn
	    (helm-projectile-on)))

(use-package js2-mode  
  :config (progn
	    (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
	    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))))

(use-package js2-refactor 
  :after js2-mode)

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2
    :after js2-mode
    :config (progn
	      (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))

(use-package json-mode 
  :after js2-mode  
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.json\\'"   . json-mode))))

 (progn
  "Pos-tip Clippy settings"
  (load-file "~/.emacs.d/clippy.el"))

;;; .packages.el ends here
