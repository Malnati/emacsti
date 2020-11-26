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
export EDITOR='emacsclient -create-frame --alternate-editor="" -t' # $EDITOR opens in terminal
export VISUAL='emacsclient -create-frame --alternate-editor="" -n' # $VISUAL opens in GUI mode

# Emacs client

alias emacsx='emacsclient -create-frame --alternate-editor="" -n'
alias emacst='emacsclient -create-frame --alternate-editor="" -t'
alias emacsc="emacsclient --eval \"(progn (setq kill-emacs-hook \'nil) (kill-emacs))\""
alias emacsdaemonstart='emacs --deamon'
alias emacsdaemonstop='ps aux | grep "[e]macs --daemon" && echo "use sudo kill -9 <PID>"'
alias emacsdaemonstatus='ps aux | grep "[e]macs --daemon"'

# Stats the emacs daemon.                                                                                                                                                             
emacsdaemonstatus
```

#### Download and install

**Basic tools just for Debian linux distros and derivated...**

```bash
sudo apt-get install emacs -y &&\
sudo apt-get install gnome-tweak-tool -y &&\
sudo apt-get install elpa-projectile elpa-flycheck flycheck-doc -y
```

**Basic tools just for OSX...**

```bash
sudo apt-get install emacs -y &&\
sudo apt-get install gnome-tweak-tool -y &&\
sudo apt-get install elpa-projectile elpa-flycheck flycheck-doc -y
```

**It will download and create a symbolic link to ~/.emacs.d/.emacs**

```bash
git clone https://github.com/Malnati/emacsti.git ~/.emacsti &&\
ln -s ~/.emacsti/init.el ~/.emacs 
```

#### Use

Start a new terminal and type ```emacst``` or ```emacsx``` for open an Emacsti in a new X window. 


