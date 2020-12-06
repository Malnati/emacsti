;;; https://github.com/flycheck/flycheck-inline
(add-to-list 'load-path "~/.emacsti/libs/flycheck-inline/")

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook 'flycheck-inline-mode))

(setq flycheck-inline-display-function
      (lambda (msg pos)
        (let* ((ov (quick-peek-overlay-ensure-at pos))
               (contents (quick-peek-overlay-contents ov)))
          (setf (quick-peek-overlay-contents ov)
                (concat contents (when contents "\n") msg))
          (quick-peek-update ov)))
      flycheck-inline-clear-function #'quick-peek-hide)


;;(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("/some/react/path/.*\\.js[x]?\\'" . web-mode))

;;(setq web-mode-content-types-alist
;;  '(("json" . "/some/path/.*\\.api\\'")
;;    ("xml"  . "/other/path/.*\\.api\\'")
;;    ("jsx"  . "/some/react/path/.*\\.js[x]?\\'")))

;; (add-hook 'after-init-hook 'global-company-mode)
