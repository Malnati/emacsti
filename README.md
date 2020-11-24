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
alias emacsdaemonstart='systemctl --user status emacs.service'
alias emacsdaemonstop='systemctl --user stop emacs.service && ps aux | grep "[e]macs --daemon"'
alias emacsdaemonstatus='systemctl --user status emacs.service && ps aux | grep "[e]macs --daemon"'

# Stats the emacs daemon.                                                                                                                                                             
ps aux | grep "[e]macs --daemon"                                                                                                                                                          
systemctl --user status emacs.service
tree ~/.config/systemd/user/
```

#### Download and install

**It will download and create a symbolic link to ~/.emacs.d/.emacs**

```bash
sudo apt-get install emacs -y &&\
sudo apt-get install gnome-tweak-tool -y &&\
sudo apt-get install elpa-projectile -y &&\
sudo apt-get install tree -y &&\
git clone https://github.com/Malnati/emacsti.git ~/.emacsti &&\
git clone https://github.com/vapniks/org-dotemacs.git ~/.emacsti/.emacs.d/org-dotemacs &&\
ln -s ~/.emacsti/init.el ~/.emacs &&\
ln -s ~/.emacsti/.emacs.d/ ~/.emacs.d 
```

#### As Service

**Use it only if you know what you are doing!**

```bash
mkdir -p ~/.config/systemd/user/ &&\
ln -s ~/.emacsti/emacs.service ~/.config/systemd/user/emacs.service &&\
systemctl --user start emacs.service &&\
systemctl --user status emacs.service
```

#### Use

Start a new terminal and type ```emacst``` or ```emacsx``` for open an Emacsti in a new X window. 


