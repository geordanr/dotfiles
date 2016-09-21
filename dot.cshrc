#
# $Id: .cshrc,v 1.1 1998/03/10 23:35:34 geordan Exp geordan $
#

#  by default, this lets people read, but not write, your files.
#  to make your files unreadable, by default, change this line to
#  umask 077

umask 022

unset autologout

# VirtualEnv => Distribute
setenv VIRTUALENV_USE_DISTRIBUTE
setenv PYTHONPATH ~/src/pylint_modules
setenv BLOCKSIZE K

# this prevents program crashes from leaving large core files around,
# which are useful if you're debugging but not otherwise.
#limit coredumpsize 0

# Colors!
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

set filec
set ignoreeof
set notify
if (-e ~/.alias) source ~/.alias

setenv EDITOR vim
setenv VISUAL vim
setenv PAGER	less
setenv LESS	"-geRMX"
setenv GOPATH ~/src/go

set path = (    ~/bin \
                 /bin\
                 /sbin\
                 /usr/bin\
                 /usr/sbin\
                 /usr/local/bin\
                 /usr/local/sbin \
                 /opt/intel/bin \
                 /usr/local/node/bin \
                 /usr/local/go/bin \
                 $GOPATH/bin \
)

if ($?prompt) then
    stty erase ^H
    stty kill ^U
    stty intr ^C

    set prompt="`hostname -s` `pwd`% "
    alias   cd      'cd \!*; set prompt="`hostname -s` `pwd`% "'
endif
