;;https://web-mode.org/
(add-to-list 'load-path "~/.emacsti/libs/web-mode/")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; Using web-mode for editing plain HTML files can be done this way
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; You can also edit plain js, jsx, css, scss, xml files.
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))
;; Associate an engine
;; A specific engine can be forced with web-mode-engines-alist.
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

;;(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("/some/react/path/.*\\.js[x]?\\'" . web-mode))

;;(setq web-mode-content-types-alist
;;  '(("json" . "/some/path/.*\\.api\\'")
;;    ("xml"  . "/other/path/.*\\.api\\'")
;;    ("jsx"  . "/some/react/path/.*\\.js[x]?\\'")))

;; (add-hook 'after-init-hook 'global-company-mode)

;; General

;;     M-; comment / uncomment line(s)
;;     C-c C-f toggle folding on a tag/block
;;     C-c C-i indent entire buffer
;;     C-c C-m mark and expand
;;     C-c C-s insert snippet
;;     C-c C-w toggle display of invalid whitespaces

	
;; DOM

;;     C-c C-d a replace apostrophes
;;     C-c C-d d show tag mismatch
;;     C-c C-d e replace HTML entities
;;     C-c C-d n normalize
;;     C-c C-d q replace dumb quotes
;;     C-c C-d t traverse dom tree
;;     C-c C-d x xpath

	
;; Block

;;     C-c C-b b block beginning
;;     C-c C-b c block close
;;     C-c C-b e block end
;;     C-c C-b k block kill
;;     C-c C-b n next block
;;     C-c C-b p previous block
;;     C-c C-b s block select

;; HTML element

;;     C-c C-e / element close
;;     C-c C-e a select element content
;;     C-c C-e b element beginning
;;     C-c C-e c element clone
;;     C-c C-e d child element (down)
;;     C-c C-e e element end
;;     C-c C-e f toggle folding on children
;;     C-c C-e i element insert
;;     C-c C-e k element kill
;;     C-c C-e m mute blanks between children
;;     C-c C-e n next element
;;     C-c C-e p previous element
;;     C-c C-e r rename element
;;     C-c C-e s select element
;;     C-c C-e t transpose element
;;     C-c C-e u parent element (up)
;;     C-c C-e v element vanish
;;     C-c C-e w wrap element

	
;; HTML tag

;;     C-c C-t a sort attributes
;;     C-c C-t b tag beginning
;;     C-c C-t e tag end
;;     C-c C-t m fetch matching tag
;;     C-c C-t n next tag
;;     C-c C-t p previous tag
;;     C-c C-t s select tag

	
;; HTML attribute

;;     C-c C-a b attribute beginning
;;     C-c C-a e attribute end
;;     C-c C-a i attribute insert
;;     C-c C-a k attribute kill
;;     C-c C-a n attribute next
;;     C-c C-a p attribute previous
;;     C-c C-a s attribute select
;;     C-c C-a t attribute transpose

;; Helper functions

;;     web-mode-apostrophes-replace : replace ' by ’ (only in HTML content)
;;     web-mode-entities-replace : replace html entities (only in HTML content)
;;     web-mode-quotes-replace : replace dumb quotes (only in HTML content)
