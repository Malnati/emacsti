;;; dap-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "dap-chrome" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-chrome.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-chrome.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-chrome" '("dap-chrome-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-cpptools"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-cpptools.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-cpptools.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-cpptools" '("dap-cpptools-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-edge" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-edge.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-edge.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-edge" '("dap-edge-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-elixir" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-elixir" '("dap-elixir--populate-start-file-args")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-firefox"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-firefox.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-firefox.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-firefox" '("dap-firefox-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-gdb-lldb"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-gdb-lldb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-gdb-lldb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-gdb-lldb" '("dap-gdb-lldb-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-go" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-go" '("dap-go-")))

;;;***

;;;### (autoloads nil "dap-hydra" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-hydra.el"
;;;;;;  "4ecb86103346ead1e65f1ef7a0f7a115")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-hydra.el

(autoload 'dap-hydra "dap-hydra" "\
Run `dap-hydra/body'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dap-hydra" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-hydra.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-hydra.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-hydra" '("dap-hydra")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-launch" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-launch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-launch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-launch" '("dap-launch-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-lldb" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-lldb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-lldb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-lldb" '("dap-lldb-")))

;;;***

;;;### (autoloads nil "dap-mode" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode.el"
;;;;;;  "830f370cad558222b8804238addf6ea8")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode.el

(autoload 'dap-debug "dap-mode" "\
Run debug configuration DEBUG-ARGS.

If DEBUG-ARGS is not specified the configuration is generated
after selecting configuration template.

\(fn DEBUG-ARGS)" t nil)

(defvar dap-mode nil "\
Non-nil if Dap mode is enabled.
See the `dap-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-mode'.")

(custom-autoload 'dap-mode "dap-mode" nil)

(autoload 'dap-mode "dap-mode" "\
Global minor mode for DAP mode.

\(fn &optional ARG)" t nil)

(defvar dap-auto-configure-mode nil "\
Non-nil if Dap-Auto-Configure mode is enabled.
See the `dap-auto-configure-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-auto-configure-mode'.")

(custom-autoload 'dap-auto-configure-mode "dap-mode" nil)

(autoload 'dap-auto-configure-mode "dap-mode" "\
Auto configure dap minor mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dap-mode" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-mode" '("dap-")))

;;;***

;;;***

;;;### (autoloads nil "dap-mouse" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mouse.el"
;;;;;;  "5e76eeb5bbf0ba10c5deb38b31acd59b")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mouse.el

(defvar dap-tooltip-mode nil "\
Non-nil if Dap-Tooltip mode is enabled.
See the `dap-tooltip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-tooltip-mode'.")

(custom-autoload 'dap-tooltip-mode "dap-mouse" nil)

(autoload 'dap-tooltip-mode "dap-mouse" "\
Toggle the display of GUD tooltips.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dap-mouse" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mouse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mouse.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-mouse" '("dap-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-netcore"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-netcore.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-netcore.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-netcore" '("dap-netcore-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-node" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-node.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-node" '("dap-node-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-overlays"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-overlays.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-overlays.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-overlays" '("dap-overlays-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-php" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-php" '("dap-php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-pwsh" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-pwsh.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-pwsh" '("dap-pwsh-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-python" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-python" '("dap-python-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-ruby" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-ruby" '("dap-ruby-")))

;;;***

;;;### (autoloads nil "dap-ui" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ui.el"
;;;;;;  "80c7bc040b1101c993edfe339b0b9e87")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ui.el

(defvar dap-ui-mode nil "\
Non-nil if Dap-Ui mode is enabled.
See the `dap-ui-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-mode'.")

(custom-autoload 'dap-ui-mode "dap-ui" nil)

(autoload 'dap-ui-mode "dap-ui" "\
Displaying DAP visuals.

\(fn &optional ARG)" t nil)

(autoload 'dap-ui-breakpoints-list "dap-ui" "\
List breakpoints.

\(fn)" t nil)

(defvar dap-ui-controls-mode nil "\
Non-nil if Dap-Ui-Controls mode is enabled.
See the `dap-ui-controls-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-controls-mode'.")

(custom-autoload 'dap-ui-controls-mode "dap-ui" nil)

(autoload 'dap-ui-controls-mode "dap-ui" "\
Displaying DAP visuals.

\(fn &optional ARG)" t nil)

(autoload 'dap-ui-sessions "dap-ui" "\
Show currently active sessions.

\(fn)" t nil)

(autoload 'dap-ui-locals "dap-ui" "\


\(fn)" t nil)

(autoload 'dap-ui-show-many-windows "dap-ui" "\
Show auto configured feature windows.

\(fn)" t nil)

(autoload 'dap-ui-hide-many-windows "dap-ui" "\
Hide all debug windows when sessions are dead.

\(fn)" t nil)

(autoload 'dap-ui-repl "dap-ui" "\
Start an adapter-specific REPL.
This could be used to evaluate JavaScript in a browser, to
evaluate python in the context of the debugee, ....

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dap-ui" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-ui" '("dap-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-utils" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-utils" '("dap-utils-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "dap-variables"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-variables.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-variables.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dap-variables" '("dap-variables-")))

;;;***

;;;### (autoloads nil "dapui" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dapui.el"
;;;;;;  "3f2946ed3d0e62760020eb808d21bc4c")
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dapui.el

(autoload 'dapui-loaded-sources "dapui" "\


\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dapui" "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dapui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dapui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dapui" '("dapui-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-chrome.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-cpptools.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-edge.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-elixir.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-firefox.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-gdb-lldb.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-go.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-hydra.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-launch.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-lldb.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mode.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-mouse.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-netcore.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-node.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-overlays.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-php.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-pwsh.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-python.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ruby.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-ui.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-utils.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dap-variables.el"
;;;;;;  "../../../../../../../.emacs.d/libs/elpa-linux/dap-mode-20201118.1304/dapui.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dap-mode-autoloads.el ends here
