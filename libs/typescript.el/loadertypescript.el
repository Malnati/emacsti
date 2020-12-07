(add-to-list 'load-path "~/.emacsti/libs/typescript.el/")
(require 'ansi-color)

(defun colorize-compilation-buffer ()
  (ansi-color-apply-on-region compilation-filter-start (point-max)))

(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;;(add-hook 'after-init-hook 'global-company-mode)

;;npm install -g typescript-formatter

;; https://develop.spacemacs.org/layers/+lang/typescript/README.html
;; Key binding 	Description
;; SPC m = or SPC m = = if using lsp backend 	reformat the buffer
;; SPC m E d 	add tslint:disable-next-line at point
;; SPC m E e 	fix thing at point
;; SPC m g b 	jump back
;; SPC m g g 	jump to entity's definition
;; SPC m g t 	jump to entity's type definition
;; SPC m g r 	references
;; SPC m h h 	documentation at point
;; SPC m p 	send selected region or current buffer to the web playground
;; SPC m r i 	organize imports
;; SPC m r r 	rename symbol
;; SPC m r f 	rename file
;; SPC m S r 	restart server
;; SPC m S j 	create a barebone jsconfig.json at project root