# Emacsti

Custom configurations for Emacs turning it bello!

### Install

#### Setup

**It's better performance if you run as service and isolate your custom setup too.**

**Add to ~/.bashrc**

```bach
# Emacs definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_emacs, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_emacs ]; then
	. ~/.bash_emacs
fi
```

**Create this file ~/.bash_emacs with content below.**

```bash
#!/bin/sh

# Enironment valiables for using emacs as a server

export ALTERNATE_EDITOR=""
export EDITOR='emacs -nw' # $EDITOR opens in terminal
export VISUAL='emacs' # $VISUAL opens in GUI mode

# Emacs client

alias emacsx='emacs'
alias emacst='emacs -nw'
alias emacsdaemon='emacs --deamon'
alias emacstatus='ps aux | grep "[e]macs --daemon" && echo "use sudo kill -9 <PID>"' 
```

#### Download and install

**Basic tools just for Debian linux distros and derivated...**

```bash
sudo apt-get install emacs -y && \
sudo apt-get install gnome-tweak-tool -y && \
sudo npm install -g prettier prettier-plugin-java -y && \
sudo apt-get install elpa-projectile elpa-flycheck flycheck-doc elpa-yasnippet-snippets -y
```

**Basic tools just for OSX...**

```bash
TODO
```

**It will download and create symbolic links**


```bash
wget https://raw.githubusercontent.com/Malnati/emacsti/main/install.sh && . ./install.sh
```

#### Use

Start a new terminal and type ```emacst``` or ```emacsx``` for open an Emacsti in a new X window. 

Add your projects paths to ~/.emacsti/custom.el as below.

```elisp
;; Example
(setq projectile-project-search-path '("~/projects/"))
(message "→ projectile search path ~/projects/")

(add-hook 'after-save-hook #'emacsti-commit-after-save)
```

#### TabNine

ref: (https://github.com/TommyX12/company-tabnine)[https://github.com/TommyX12/company-tabnine]
Run M-x ```company-tabnine-install-binary``` to install the TabNine binary for your system.
