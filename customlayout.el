;; A frame has many parameters that control its appearance and
;; behavior. Just what parameters a frame has depends on
;; what display mechanism it uses.
;; Frame parameters exist mostly for the sake of graphical displays.
;; Most frame parameters have no effect when applied to a frame on
;; a text terminal; only the height, width, name, title, menu-bar-lines,
;; buffer-list and buffer-predicate parameters do something special.
;; If the terminal supports colors, the parameters foreground-color,
;; background-color, background-mode and display-type are also meaningful.
;; If the terminal supports frame transparency, the parameter alpha is
;; also meaningful.
;; By default, frame parameters are saved and restored by the desktop
;; library functions (see Desktop Save Mode) when the variable
;; desktop-restore-frames is non-nil. It’s the responsibility of
;; applications that their parameters are included in
;; frameset-persistent-filter-alist to avoid that they get meaningless
;; or even harmful values in restored sessions.
;;
;; ref: https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Parameters.html#Frame-Parameters
;;
(setq initial-frame-alist
      (quote
       (
	(bottom-divider-width . 1)
	(right-divider-width . 1)
	(border-width . 1)
	(internal-border-width . 1)
	(scroll-bar-width . 2)
	)
       )
      )
(message "→ initial-frame-alist custom setup widths for borders, dividers and others DONE!")

(window-divider-mode t)
(message "→ Window divider ON!")
(setq window-divider-default-right-width 1)
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

;; https://emacsredux.com/blog/2015/01/18/cus
(fringe-mode 2)
(message "→ Fringes sized to 2px!")

(setq buffers-menu-buffer-name-length 64)
(message "→ Buffers menu lenght sized to 64!")

(setq buffers-menu-max-size 32)
(message "→ Buffers menu sized to 32!")

(setq buffers-menu-show-directories t)
(message "→ Buffers menu show directories ON!")

(global-visual-line-mode t)

(setq org-startup-with-beamer-mode t)
 ;; '(beacon-color "gold")
 ;; '(beacon-fallback-background ((t (:background "dim gray"))))
 ;; '(beacon-mode t)
