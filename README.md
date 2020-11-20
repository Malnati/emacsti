# emacs
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

#### Download and install

**It will download and create a symbolic link to ~/.emacs.d/.emacs

```bash
git clone https://github.com/Malnati/emacs.git ~ &&\
git clone https://github.com/vapniks/org-dotemacs.git ~/.emacs.d/org-dotemacs &&\
ln -s ~/.emacs.d/.emacs ~/.emacs
```
