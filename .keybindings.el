;;; .keybindings --- Setup keybindings

;; Copyright (C) 2020 Ricardo Malnati Rosa Lima

;; Author: Ricardo Malanti <ricardomalnati@gmail.com>
;; Maintainer: Ricardo Malanti <ricardomalnati@gmail.com>
;; Created: Dez 2020
;; Keywords: evironment
;; Version: 1.0
;; URL: https://github.com/Malnati

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This library implements a set of configurations and preferencies.

;;; Code:

(progn
  "basic - keytrokes definitions"
  (global-set-key (kbd "C-z")   'undo)
  (global-set-key (kbd "C-c c") 'copy-line)
  (global-set-key (kbd "C-c d") 'duplicate-line)
  (global-set-key (kbd "C-c f i") 'indent-region)
  (global-set-key (kbd "C-c m l") 'select-line)
  (global-set-key [(control shift meta up)]   'text-scale-increase)
  (global-set-key [(control shift meta down)] 'text-scale-decrease))

(progn
  "bookmark - keytrokes definitions"
  (define-prefix-command 'bookmark)
  (global-set-key (kbd "C-c b") 'bookmark)
  (global-set-key (kbd "C-c b c") 'bookmark-set)
  (global-set-key (kbd "C-c b d") 'bookmark-delete)
  (global-set-key (kbd "C-c b l") 'list-bookmarks))

(progn
  "company - keytrokes definitions"
  (eval-after-load 'company
    '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin)))

(progn
  "drag-stuff - keytrokes definitions"
  (drag-stuff-define-keys)
  (define-prefix-command 'drag-stuff)
  (global-set-key [(meta up)]   'drag-stuff-up)
  (global-set-key [(meta down)] 'drag-stuff-down))

(progn
  "eval - keytrokes definitions"
  (global-set-key (kbd "C-c e b") 'eval-buffer)
  (global-set-key (kbd "C-c e r") 'eval-region))

(progn
  "js2r - keytrokes definitions"
  (js2r-add-keybindings-with-prefix "C-c j"))

(progn
  "projectile - keytrokes definitions"
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(progn
  "yasnippet - keytrokes definitions"
  (define-prefix-command 'auto-yasnippet)
  (global-set-key (kbd "C-c y") 'auto-yasnippet)
  (global-set-key (kbd "C-c y c") 'aya-create)
  (global-set-key (kbd "C-c y e") 'aya-expand))

(use-package which-key
  :delight whych-key
  :preface (message "Using package `which-key'.")
  :init (progn
	  "Defaul settings for which-key mode."
	  (message "Starting `which-key'.")
	  (which-key-mode)
	  (which-key-setup-side-window-right-bottom)
	  ;; max width of which-key window, when displayed at left or right.
	  ;; valid values: number of columns (integer), or percentage out of current
	  ;; frame's width (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-width 0.4)
	  ;; max height of which-key window, when displayed at top or bottom.
	  ;; valid values: number of lines (integer), or percentage out of current
	  ;; frame's height (float larger than 0 and smaller than 1)
	  (setq which-key-side-window-max-height 0.25))
  :config  (progn
	     "Keytrokes settings"
             (which-key-add-key-based-replacements "C-c !" "flycheck")
             
             (progn
               "basic"
  	       (which-key-add-key-based-replacements "C-c c" "copy line")
	       (which-key-add-key-based-replacements "C-c d" "duplicate line")
	       (which-key-add-key-based-replacements "C-c f" "format")
	       (which-key-add-key-based-replacements "C-c f i" "indent region")
	       (which-key-add-key-based-replacements "C-c m" "mark")
	       (which-key-add-key-based-replacements "C-c m l" "mark line")
	       (which-key-add-key-based-replacements "C-c p" "project")
	       (which-key-add-key-based-replacements "C-z" "undo"))

             (progn
	       "bookmark"
	       (which-key-add-key-based-replacements "C-c b" "bookmark")
	       (which-key-add-key-based-replacements "C-c b c" "create bookmark")
	       (which-key-add-key-based-replacements "C-c b d" "delete bookmark")
	       (which-key-add-key-based-replacements "C-c b l" "list bookmark"))

             (progn
               "company"
	       (which-key-add-key-based-replacements "C-c h" "company-quickhelp"))
             
             (progn
	       "eval"
	       (which-key-add-key-based-replacements "C-c e" "eval")
	       (which-key-add-key-based-replacements "C-c e b" "eval buffer")
	       (which-key-add-key-based-replacements "C-c e r" "eval region"))
	     
             (progn
               "projectile"
	       (which-key-add-key-based-replacements "C-c p" "projectile"))
             
	     (progn
	       "yasnippet"
	       (which-key-add-key-based-replacements "C-c &" "yas")
	       (which-key-add-key-based-replacements "C-c y" "yasnippet")
	       (which-key-add-key-based-replacements "C-c y c" "create yasnippet")
	       (which-key-add-key-based-replacements "C-c y e" "expand yasnippet"))

             (progn
               (push (cons '(nil . "emacs-lisp-mode")
                           (lambda (kb)
                             (cons (car kb)
                                   (if paredit-mode
                                       "[x] emacs-lisp-mode"
                                     "[ ] emacs-lisp-mode"))))
                     which-key-replacement-alist)))
  
  :catch (lambda (keyword err)
           (message (concat "Error during loading of `which-key'... "
                            (error-message-string err)))))


;; display a path to the object at point with json-snatcher
;; (https://github.com/Sterlingg/json-snatcher)
;; (define-key js2-keys (kbd "p") 'json-mode-show-path)

;; (progn
;;   "Avy which-key setup"
;;   (defun configure-keytrokes-avy-f ()
;;     (lambda () ((global-set-key (kbd "M-s") 'avy-goto-char)
;;    	     (which-key-add-key-based-replacements "M-s" "avy goto-char"))))
;;   (add-hook 'avy-hook 'configure-keytrokes-avy-f))

;; (progn
;;     "xref-js2 keytrokes definitions"
;;     (define-prefix-command 'xref-js2)
;;     (global-set-key (kbd "C-c x") 'xref-js2)
;;     (define-key xref-js2 (kbd "a")   'js2-mode-show-all)
;;     (define-key xref-js2 (kbd "g")   'xref-revert-buffer)
;;     (define-key xref-js2 (kbd "j")   'js2-jump-to-definition)
;;     (define-key xref-js2 (kbd "C-o") 'xref-show-location-at-point)
;;     (define-key xref-js2 (kbd "s")   'js2-mode-show-element))
;;  (define-prefix-command 'js2-keys)
;; (global-set-key (kbd "C-c C-j") 'js2-keys)

  ;;; .keybindings.el ends here
