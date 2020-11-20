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
                                                                                                                                                                                                            
# Start the emacs daemon if not already running.                                                                                                                                                           
daemon_running=`ps aux | grep "[e]macs --daemon"`                                                                                                                                                          
if [[ $daemon_running ]]; then                                                                                                                                                                             
    echo "Emacs daemon already running."                                                                                                                                                                   
else                                                                                                                                                                                                       
    echo "Emacs daemon not running. Starting it."                                                                                                                                                          
    emacs --daemon                                                                                                                                                                                         
fi                                                                                                                                                                                                         
                                                                                                                                                                                                            
# Stopping emacs daemon                                                                                                                                                                                    
emacsclient --eval "(progn (setq kill-emacs-hook 'nil) (kill-emacs))" 
```

#### Download and install

**It will download and create a symbolic link to ~/.emacs.d/.emacs**

```bash
git clone https://github.com/Malnati/emacsti.git ~/.emacsti &&\
git clone https://github.com/vapniks/org-dotemacs.git ~/.emacsti/.emacs.d/org-dotemacs &&\
ln -s ~/.emacsti/init.el ~/.emacs &&\
ln -s ~/.emacsti/.emacs.d/ ~/.emacs.d &&\
emacs --daemon --chdir=./.emacs.d &&\
emacsclient -c -n
```

#### Use

**Start a new terminal or ```source ~/.bachrc``` and call ```emacsclient -c -n``` or just ```emacs```

