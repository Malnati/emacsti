;;; package --- .loader.el
;;; Commentary:
;;; Code:

(when
    (member system-type
	    '(pc w32 ms-dos windows-nt cygwin)
	    )
  (setq package-user-dir "~/.emacs.d/elpa/mswin")
  )
(when
    (member system-type '(ns darwin))
  (setq package-user-dir "~/.emacs.d/elpa/macos"))
(when
    (member system-type '(gnu/linux gnu x))
  (setq package-user-dir "~/.emacs.d/elpa/linux"))

(progn
  "Loading no dependences preferences."
  (load-file "~/.emacs.d/.preferences.el"))

(if (not (file-directory-p package-user-dir))
    (progn
      "To prevent for calling melpa at starting.
It should be only if the user wants to install a new package, but not every time."
      (message "The `package-user-dir' is not there!" )
      (package-initialize)
      (add-to-list 'package-archives '("unstable" . "https://melpa.org/packages/") t)
      (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/") t)
      (package-refresh-contents)
      (package-install 'use-package)
      (load-file "~/.emacs.d/.install.el")
      (message (concat "The `package-user-dir' was created at:" package-user-dir))))

(package-initialize)

(load-file "~/.emacs.d/.config.el")
(load-file "~/.emacs.d/.keybindings.el")
(load-file "~/.emacs.d/.hydra-settings.el")

;;(load-file "~/.emacs.d/.defer.el")
;;(load-file "~/.emacs.d/.lsp-java.el")
;;(load-file "~/.emacs.d/.draft.el")

;; (use-package powerline
;;   :config (powerline-nano-theme)
;;   (powerline-raw mode-line-mule-info nil 'l))

(provide '.loader)

;;; .loader.el ends here
