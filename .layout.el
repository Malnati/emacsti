(setq initial-frame-alist
      (quote
       (
	(bottom-divider-width . 1)
	(right-divider-width . 1)
	;; (border-width . 1)
	;; (internal-border-width . 1)
	(scroll-bar-width . 2)
	)
       )
      )
(message "→ initial-frame-alist custom setup widths for borders, dividers and others DONE!")

(window-divider-mode -1)
(message "→ Window divider OFF!")

(setq window-divider-default-right-width t)
(message "→ window-divider-default-right-width ON!")

(global-display-line-numbers-mode t)
(message "→ Showing line numbers globally!")

(setq display-line-numbers t)
(message "→ Showing line numbers!")

(column-number-mode t)
(message "→ Showing colunm number!")

(scroll-bar-mode -1)
(message "→ Removed scrolls!")

(tool-bar-mode -1)
(message "→ Removed tool bar!")

(fringe-mode 8)
(message "→ Fringes sized to 8px!")

;;(set-face-background 'fringe "brightcyan")
;;(message "→ Fringes background\"brightcyan\"!")

(set-face-attribute 'default nil :height 110)
(message "→ Font size 110!")

(set-face-foreground 'fringe "orange")
(message "→ Fringes foreground\"orange\"!")

(setq buffers-menu-buffer-name-length 64)
(message "→ Buffers menu lenght sized to 64!")

(setq buffers-menu-max-size 32)
(message "→ Buffers menu sized to 32!")

(setq buffers-menu-show-directories t)
(message "→ Buffers menu show directories ON!")

(setq-default cursor-type 'bar)
(message "→ cursor-type 'bar!")

(set-cursor-color "yellow")
(message "→ cursor-color \"yellow\"!")

(global-visual-line-mode t)

(setq org-startup-with-beamer-mode t)
