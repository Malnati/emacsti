(add-to-list 'load-path "~/.emacsti/libs/color-identifiers-mode")
(require 'color-identifiers-mode)

;; (defun myfunc-color-identifiers-mode-hook ()
;;   (let ((faces '(font-lock-comment-face font-lock-comment-delimiter-face font-lock-constant-face font-lock-type-face font-lock-function-name-face font-lock-variable-name-face font-lock-keyword-face font-lock-string-face font-lock-builtin-face font-lock-preprocessor-face font-lock-warning-face font-lock-doc-face font-lock-negation-char-face font-lock-regexp-grouping-construct font-lock-regexp-grouping-backslash)))
;;     (dolist (face faces)
;;       (face-remap-add-relative face '((:foreground "" :weight normal :slant normal)))))
;;   (face-remap-add-relative 'font-lock-keyword-face '((:weight bold)))
;;   (face-remap-add-relative 'font-lock-comment-face '((:slant italic)))
;;   (face-remap-add-relative 'font-lock-builtin-face '((:weight bold)))
;;   (face-remap-add-relative 'font-lock-preprocessor-face '((:weight bold)))
;;   (face-remap-add-relative 'font-lock-function-name-face '((:slant italic)))
;;   (face-remap-add-relative 'font-lock-string-face '((:slant italic)))
;;   (face-remap-add-relative 'font-lock-constant-face '((:weight bold))))
;; (add-hook 'color-identifiers-mode-hook 'myfunc-color-identifiers-mode-hook)

(add-hook 'after-init-hook 'global-color-identifiers-mode)