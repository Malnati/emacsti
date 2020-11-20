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

# Starts emacs as service by this user
emacs --daemon --chdir=./.emacs.d
```

**optionally** you can create aliases 

```bash
alias emacsx="emacsclient -c -n"
alias emacst="emacsclient -c -t"
alias emacsc="emacsclient -e '(kill-emacs)'"
```

#### Download and install

**It will download and create a symbolic link to ~/.emacs.d/.emacs

```bash
git clone https://github.com/Malnati/emacsti.git ~/.emacsti &&\
git clone https://github.com/vapniks/org-dotemacs.git ~/.emacsti/.emacs.d/org-dotemacs &&\
ln -s ~/.emacsti/.emacs.d/init.el ~/.emacs
ln -s ~/.emacsti/.emacs.d/ ~/.emacs.d
```

#### Use

**Start a new terminal or ```source ~/.bachrc``` and call ```emacsclient -c -n``` or just ```emacs```

