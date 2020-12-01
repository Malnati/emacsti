;; https://github.com/prettier/prettier-emacs
(add-to-list 'load-path "~/.emacsti/libs/prettier/")

(require 'prettier-js)

;; I did not use prettier hook yet becouse I missed undo feature after test de code below.

;; (add-hook 'js2-mode-hook 'prettier-js-mode)
;; (add-hook 'web-mode-hook 'prettier-js-mode)
;; (add-hook 'java-mode-hook 'prettier-js-mode)

;; (defun enable-minor-mode (my-pair)
;;   "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
;;   (if (buffer-file-name)
;;       (if (string-match (car my-pair) buffer-file-name)
;; 	  (funcall (cdr my-pair)))))

;; (add-hook 'web-mode-hook #'(lambda ()
;;                             (enable-minor-mode
;;                              '("\\.jsx?\\'" . prettier-js-mode))))

;; (add-hook 'java-mode-hook #'(lambda ()
;;                             (enable-minor-mode
;;                              '("\\.java\\'" . prettier-js-mode))))

;(setq prettier-js-args '(
;  "--trailing-comma" "all"
;  "--bracket-spacing" "false"
;))
