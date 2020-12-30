;;; package --- .loader.el
;;; Commentary:
;;; Code:


(load-file "~/.emacs.d/package-drive.el")

(require 'package-drive)
(progn
  '(pd/setup-melpa-f)
  '(pd/setup-dirs-f)
  '(pd/setup-use-package-f)
  )

(load-file "~/.emacs.d/.install.el")
(load-file "~/.emacs.d/.config.el")
;;(load-file "~/.emacs.d/.defer.el")

(load-file "~/.emacs.d/.preferences.el")
;;(load-file "~/.emacs.d/.lsp-java.el")
;;(load-file "~/.emacs.d/.draft.el")

(provide 'loader)

;;; loader.el ends here
