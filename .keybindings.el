(use-package which-key
  :delight whych-key
  :preface (message "Using package `which-key'.")
  :init (progn
	  "Defaul settings for which-key mode."
	  (message "Starting `which-key'.")
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
	       "yasnippet keytrokes definitions"
	       (define-prefix-command 'auto-yasnippet)
	       (global-set-key (kbd "C-c y") 'auto-yasnippet)
	       (which-key-add-key-based-replacements "C-c y" "yasnippet")
	       (global-set-key (kbd "C-c y c") 'aya-create)
	       (which-key-add-key-based-replacements "C-c y c" "create yasnippet")
	       (global-set-key (kbd "C-c y e") 'aya-expand)
	       (which-key-add-key-based-replacements "C-c y e" "expand yasnippet"))
	     (progn
	       "Avy which-key setup"
	       (defun configure-keytrokes-avy-f ()
		 (lambda () ((global-set-key (kbd "M-s") 'avy-goto-char)
			     (which-key-add-key-based-replacements "M-s" "avy goto-char"))))
	       (add-hook 'avy-hook 'configure-keytrokes-avy-f))
	     (progn
		 "xref-js2 keytrokes definitions"
		 (define-prefix-command 'xref-js2)
		 (global-set-key (kbd "C-c x") 'xref-js2)
		 (define-key xref-js2 (kbd "a")   'js2-mode-show-all)
		 (define-key xref-js2 (kbd "g")   'xref-revert-buffer)
		 (define-key xref-js2 (kbd "j")   'js2-jump-to-definition)
		 (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point)
		 (define-key xref-js2 (kbd "s")   'js2-mode-show-element))
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
	       (global-set-key [(meta down)] 'drag-stuff-down)
	       (define-prefix-command 'js2-keys)
	       (global-set-key (kbd "C-c C-j") 'js2-keys)
	       ;; display a path to the object at point with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "p") 'json-mode-show-path)
	       ;; copy a path to the object at point to the kill ring with json-snatcher (https://github.com/Sterlingg/json-snatcher)
	       (define-key js2-keys (kbd "P") 'json-mode-kill-path)
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
	       (which-key-add-key-based-replacements "C-z" "undo") ))
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `which-key'... "
			    (error-message-string err)))))
