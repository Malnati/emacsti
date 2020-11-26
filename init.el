
;;--------------------------------------------------------------------
;;
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory
;;
(message "Starting for evaluating .init.el file!")

(require 'package)
(package-initialize)

(load-file "~/.emacsti/custompackages.el")

(load-file "~/.emacsti/customlayout.el")
(load-file "~/.emacsti/customsave.el")
(load-file "~/.emacsti/custombehavior.el")
(load-file "~/.emacsti/customwhichkey.el")

(load-file "~/.emacsti/customprojectile.el")
(load-file "~/.emacsti/customflycheck.el")
(load-file "~/.emacsti/customexecpathfromshell.el")
(load-file "~/.emacsti/customcompany.el")
(load-file "~/.emacsti/customaggressivemodeindent.el")
(load-file "~/.emacsti/custommc.el")

(load-file "~/.emacsti/customtheme.el")

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c d") 'duplicate-line)


(defun copy-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
)
(global-set-key (kbd "C-c c") 'copy-line)

(fset (quote yes-or-no-p) t)
(message "yes-or-no-p ON!")
