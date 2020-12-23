;;; js2-highlight-vars-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "js2-highlight-vars" "js2-highlight-vars.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from js2-highlight-vars.el

(autoload 'js2-highlight-vars-mode "js2-highlight-vars" "\
Minor mode that highlights occurrences of the variable under
cursor in js2-mode buffers

If called interactively, enable Js2-Highlight-vars mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-highlight-vars" '("js2-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; js2-highlight-vars-autoloads.el ends here
