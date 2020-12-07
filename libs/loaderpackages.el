(require 'package)
(package-initialize)

(custom-set-variables
 '(package-archives
   (quote
    (("marmalade"     . "http://marmalade-repo.org/packages/")
     ("marmalade-sec" . "https://marmalade-repo.org/packages/")
     ("elpa"          . "http://elpa.gnu.org/packages/")
     ("elpa-sec"      . "https://elpa.gnu.org/packages/")
     ("melpa"         . "http://melpa.org/packages/")
     ("melpa-sec"     . "https://melpa.org/packages/"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (hydra helm yasnippet-snippets))))

(load-file "~/.emacsti/libs/execpathfromshell.el")
(load-file "~/.emacsti/libs/solarizedemacs.el")
(load-file "~/.emacsti/libs/powerline.el")
(load-file "~/.emacsti/libs/expandregion.el")
(load-file "~/.emacsti/libs/multiplecursors.el")
(load-file "~/.emacsti/libs/whichkey.el")
(load-file "~/.emacsti/libs/projectile.el")
(load-file "~/.emacsti/libs/company.el")
;; (load-file "~/.emacsti/libs/postip.el")
;; (load-file "~/.emacsti/libs/quickpeek.el")
;; (load-file "~/.emacsti/libs/flycheck.el")
;; (load-file "~/.emacsti/libs/flycheckcolormodeline.el")
;; (load-file "~/.emacsti/libs/flycheckpostip.el")
;; (load-file "~/.emacsti/libs/flycheckstatusemoji.el")
;; (load-file "~/.emacsti/libs/flycheckinline.el")
;; (load-file "~/.emacsti/libs/aggressiveindent.el")
;; (load-file "~/.emacsti/libs/yasnippet.el")
;; (load-file "~/.emacsti/libs/webmode.el")
;; (load-file "~/.emacsti/libs/typescript.el")
;; (load-file "~/.emacsti/libs/rjsxmode.el")
;; (load-file "~/.emacsti/libs/tide.el")
;; (load-file "~/.emacsti/libs/importjs.el")
