(when (member window-system '(ns darwin))
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
  :config  (progn
	     (which-key-mode)))

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
	    (drag-stuff-global-mode 1)
	    (drag-stuff-define-keys)
	    (global-set-key [(meta up)]   'drag-stuff-up)
	    (global-set-key [(meta down)] 'drag-stuff-down)))

(use-package projectile  
  :config (progn
	    (projectile-mode +1)
	    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
	    (setq projectile-sort-order 'recentf)))

(use-package yasnippet
  :config (progn
	    (yas-reload-all)
	    (add-hook 'prog-mode-hook #'yas-minor-mode)
	    (yas-global-mode 1)))

(use-package yasnippet-snippets
  :after yasnippet
  :config (progn
	    (when (member window-system '(pc w32 ms-dos windows-nt cygwin))
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

(use-package helm  
  :config (progn
	    (global-set-key (kbd "M-x") 'helm-M-x)
	    (global-set-key (kbd "C-x C-f") #'helm-find-files)))

(use-package helm-projectile  
  :config (progn
	    (helm-projectile-on)))

(use-package js2-mode  
  :config (progn
	    (define-prefix-command 'js2-keys)
	    (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
	    (add-to-list 'auto-mode-alist '("\\.js\\'"   . js2-mode))))

(use-package js2-refactor 
  :after js2-mode)

(when (member system-type '(gnu/linux gnu x))
  (use-package xref-js2     
    :config (progn
	      (define-prefix-command 'xref-js2)
	      (global-set-key (kbd "C-c x") 'xref-js2)
	      (define-key xref-js2 (kbd "a")   'js2-mode-show-all) 
	      (define-key xref-js2 (kbd "e")   'js2-mode-hide-element) 
	      (define-key xref-js2 (kbd "f")   'js2-mode-toggle-hide-functions) 
	      (define-key xref-js2 (kbd "g")   'xref-revert-buffer) 
	      (define-key xref-js2 (kbd "j")   'js2-jump-to-definition) 
	      (define-key xref-js2 (kbd "n")   'xref-next-line) 
	      (define-key xref-js2 (kbd "N")   'xref-next-group) 
	      (define-key xref-js2 (kbd "o")   'js2-mode-toggle-element) 
	      (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point) 
	      (define-key xref-js2 (kbd "P")   'xref-prev-group) 
	      (define-key xref-js2 (kbd "p")   'xref-prev-line) 
	      (define-key xref-js2 (kbd "r")   'xref-query-replace-in-results) 
	      (define-key xref-js2 (kbd "s")   'js2-mode-show-element) 
	      (define-key xref-js2 (kbd "t")   'js2-mode-toggle-hide-comments) 
	      (define-key xref-js2 (kbd "w")   'js2-mode-toggle-warnings-and-errors) 
	      (define-key xref-js2 (kbd "RET") 'xref-goto-xref) 
	      (define-key xref-js2 (kbd "TAB") 'xref-quit-and-goto-xref) 
	      (define-key xref-js2 (kbd ".")   'xref-next-line)
	      (define-key xref-js2 (kbd ",")   'xref-prev-line))
    ;;(define-key xref-js2 [remap indent-new-comment-line] #'js2-line-break)
    ;;(define-key xref-js2 [down-mouse-3] #'js2-down-mouse-3)
    (add-hook 'js2-mode-hook (lambda ()
			       (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))))

(use-package json-mode 
  :after js2-mode  
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.json\\'"   . json-mode))
	    (global-set-key (kbd "C-c C-j") 'js2-keys)
	    ;; format the region/buffer with json-reformat (https://github.com/gongo/json-reformat)
	    ;; (define-key js2-keys (kbd "f") 'json-mode-beautify)
	    ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	    (define-key js2-keys (kbd "p") 'json-mode-show-path)
	    ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	    (define-key js2-keys (kbd "P") 'json-mode-kill-path)
	    ;; Toggle between true and false at point
	    ;; (define-key js2-keys (kbd "t") 'json-toggle-boolean)
	    ;; sexp Replace the at point with null
	    ;; (define-key js2-keys (kbd "k") 'json-nullify-sexp)
	    ;; Increment the number at point
	    ;; (define-key js2-keys (kbd "i") 'json-increment-number-at-point)
	    ;; Decrement the number at point
	    ;; (define-key js2-keys (kbd "d") 'json-decrement-number-at-point)
	    ))

;;; .packages.el ends here
