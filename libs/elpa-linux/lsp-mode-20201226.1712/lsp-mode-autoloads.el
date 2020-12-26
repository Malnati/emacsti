;;; lsp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "lsp-ada" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ada.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ada.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-ada" '("lsp-ada-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-angular"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-angular.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-angular.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-angular" '("lsp-client")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-bash" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-bash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-bash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-bash" '("lsp-bash-")))

;;;***

;;;### (autoloads nil "lsp-clangd" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clangd.el"
;;;;;;  "da34cd71cb285f38b2c34765996e4dd9")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clangd.el

(autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-clangd" "\
Explain a clang-tidy ERROR by scraping documentation from llvm.org.

\(fn ERROR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-clangd" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clangd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clangd.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-clangd" '("lsp-c")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-clojure"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clojure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-clojure" '("lsp-clojure-")))

;;;***

;;;### (autoloads nil "lsp-completion" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-completion.el"
;;;;;;  "cab579e4f51df609b02901c0b6779676")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "lsp-mode 7.0.1")

(autoload 'lsp-completion-at-point "lsp-completion" "\
Get lsp completions.

\(fn)" nil nil)

(autoload 'lsp-completion--enable "lsp-completion" "\
Enable LSP completion support.

\(fn)" nil nil)

(autoload 'lsp-completion-mode "lsp-completion" "\
Toggle LSP completion support.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable))))

;;;### (autoloads "actual autoloads are elsewhere" "lsp-completion"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-completion" '("lsp-completion-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-crystal"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-crystal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-crystal.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-crystal" '("lsp-clients-crystal-executable")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-csharp" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-csharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-csharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-csharp" '("lsp-csharp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-css" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-css.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-css" '("lsp-css-")))

;;;***

;;;### (autoloads nil "lsp-diagnostics" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-diagnostics.el"
;;;;;;  "ed0ddf0f4de6e3a52cc2bd3ca77928ae")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-diagnostics.el

(define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1")

(autoload 'lsp-diagnostics--enable "lsp-diagnostics" "\
Enable LSP checker support.

\(fn)" nil nil)

(autoload 'lsp-diagnostics-mode "lsp-diagnostics" "\
Toggle LSP diagnostics integration.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable))))

;;;### (autoloads "actual autoloads are elsewhere" "lsp-diagnostics"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-diagnostics.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-diagnostics" '("lsp-diagnostics-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-dockerfile"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-dockerfile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-dockerfile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-dockerfile" '("lsp-dockerfile-language-server-command")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-elixir" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-elixir" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-elm" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-elm" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-erlang" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-erlang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-erlang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-erlang" '("lsp-erlang-server-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-eslint" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-eslint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-eslint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-eslint" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-fortran"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fortran.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fortran.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-fortran" '("lsp-clients-")))

;;;***

;;;### (autoloads nil "lsp-fsharp" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fsharp.el"
;;;;;;  "8e4172aa2ce84f25b5b0dcc77214f941")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fsharp.el

(autoload 'lsp-fsharp--workspace-load "lsp-fsharp" "\
Load all of the provided PROJECTS.

\(fn PROJECTS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-fsharp" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fsharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fsharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-fsharp" '("lsp-fsharp-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-gdscript"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-gdscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-gdscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-gdscript" '("lsp-gdscript-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-go" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-go" '("lsp-go-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-groovy" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-groovy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-groovy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-groovy" '("lsp-groovy-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-hack" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-hack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-hack.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-hack" '("lsp-clients-hack-command")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-haxe" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-haxe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-haxe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-haxe" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-headerline" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-headerline.el"
;;;;;;  "96579ed19ee48da11335d7b6d25b06c6")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-headerline.el

(autoload 'lsp-headerline-breadcrumb-mode "lsp-headerline" "\
Toggle breadcrumb on headerline.

\(fn &optional ARG)" t nil)

(autoload 'lsp-breadcrumb-go-to-symbol "lsp-headerline" "\
Go to the symbol on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-headerline" "\
Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-headerline"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-headerline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-headerline.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-headerline" '("lsp-headerline-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-html" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-html" '("lsp-html-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-javascript"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-javascript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-javascript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-javascript" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-json" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-json.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-json.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-json" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-kotlin" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-kotlin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-kotlin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-kotlin" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-lens" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lens.el"
;;;;;;  "7be3adfd6de53bb848f5135c5c8207c5")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lens.el

(autoload 'lsp-lens-show "lsp-lens" "\
Display lenses in the buffer.

\(fn)" t nil)

(autoload 'lsp-lens-hide "lsp-lens" "\
Delete all lenses.

\(fn)" t nil)

(autoload 'lsp-lens-mode "lsp-lens" "\
Toggle code-lens overlays.

\(fn &optional ARG)" t nil)

(autoload 'lsp-avy-lens "lsp-lens" "\
Click lsp lens using `avy' package.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-lens" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lens.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-lens" '("lsp-lens-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-lua" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-lua" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode.el"
;;;;;;  "d4ef6c6f615232c3b72a55aaf1ca1196")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode.el
(put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp)
(put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i))))

(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

\(fn &optional ARG)" t nil)

(autoload 'lsp-deferred "lsp-mode" "\
Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs.

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-mode" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode" '("lsp-" "make-lsp-client" "with-lsp-workspace" "when-lsp-workspace")))

;;;***

;;;***

;;;### (autoloads nil "lsp-modeline" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-modeline.el"
;;;;;;  "42d401c64170e808ad32d6b3eb158fb8")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-modeline.el

(define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1")

(autoload 'lsp-modeline-code-actions-mode "lsp-modeline" "\
Toggle code actions on modeline.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1")

(autoload 'lsp-modeline-diagnostics-mode "lsp-modeline" "\
Toggle diagnostics modeline.

\(fn &optional ARG)" t nil)

(autoload 'lsp-modeline-workspace-status-mode "lsp-modeline" "\
Toggle workspace status on modeline.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-modeline"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-modeline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-modeline.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-modeline" '("lsp-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-nix" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-nix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-nix.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-nix" '("lsp-nix-server-path")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-ocaml" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ocaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-ocaml" '("lsp-ocaml-l")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-perl" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-perl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-perl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-perl" '("lsp-perl-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-php" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-php" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-prolog" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-prolog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-prolog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-prolog" '("lsp-prolog-server-command")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-protocol"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-protocol" '("lsp" "dash-expand:&RangeToPoint")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-purescript"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-purescript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-purescript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-purescript" '("lsp-purescript-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-pwsh" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pwsh.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-pwsh" '("lsp-pwsh-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-pyls" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pyls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pyls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-pyls" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-r" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-r.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-r.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-r" '("lsp-clients-r-server-command")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-racket" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-racket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-racket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-racket" '("lsp-racket-lang")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-rf" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-rf" '("parse-rf-language-server-" "expand-start-command" "lsp-rf-language-server-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-rust" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-rust" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-solargraph"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-solargraph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-solargraph.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-solargraph" '("lsp-solargraph-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-sorbet" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sorbet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sorbet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-sorbet" '("lsp-sorbet-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-sqls" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sqls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sqls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-sqls" '("lsp-sqls-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-steep" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-steep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-steep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-steep" '("lsp-steep-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-svelte" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-svelte.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-svelte.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-svelte" '("lsp-svelte-plugin-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-terraform"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-terraform.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-terraform.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-terraform" '("lsp-terraform-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-tex" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-tex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-tex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-tex" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vala" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vala.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-vala" '("lsp-clients-vala-ls-executable")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-verilog"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-verilog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-verilog" '("lsp-clients-verilog-executable")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vetur" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vetur.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vetur.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-vetur" '("lsp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vhdl" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vhdl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vhdl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-vhdl" '("lsp-vhdl-" "ghdl-ls-bin-name" "vhdl-" "hdl-checker-bin-name")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vimscript"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vimscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vimscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-vimscript" '("lsp-clients-vim-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-xml" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-xml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-xml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-xml" '("lsp-xml-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-yaml" "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-yaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-yaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-yaml" '("lsp-yaml-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ada.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-angular.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-bash.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clangd.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-clojure.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-cmake.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-completion.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-crystal.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-csharp.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-css.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-dhall.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-diagnostics.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-dockerfile.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elixir.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-elm.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-erlang.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-eslint.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fortran.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-fsharp.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-gdscript.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-go.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-groovy.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-hack.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-haxe.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-headerline.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-html.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-javascript.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-json.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-kotlin.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lens.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-lua.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-mode.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-modeline.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-nim.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-nix.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-ocaml.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-perl.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-php.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-prolog.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-protocol.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-purescript.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pwsh.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-pyls.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-r.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-racket.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rf.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-rust.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-solargraph.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sorbet.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-sqls.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-steep.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-svelte.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-terraform.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-tex.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vala.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-verilog.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vetur.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vhdl.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-vimscript.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-xml.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp-yaml.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/lsp-mode-20201226.1712/lsp.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-mode-autoloads.el ends here
