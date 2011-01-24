#
# $Id: .cshrc,v 1.1 1998/03/10 23:35:34 geordan Exp geordan $
#

#  by default, this lets people read, but not write, your files.
#  to make your files unreadable, by default, change this line to
#  umask 077

umask 022

set path = (    ~/bin \
                 /usr/local/bin\
                 /opt/local/bin\
                 /usr/local/sbin \
                 /usr/local/git/bin \
                 /bin\
                 /sbin\
                 /usr/bin\
                 /usr/sbin\
                 /usr/X11R6/bin\
)

# ImageMagick personal install
setenv MAGICK_HOME ~/ImageMagick-6.6.5
setenv DYLD_LIBRARY_PATH ${MAGICK_HOME}/lib
set path= ( $path ~/ImageMagick-6.6.5/bin )

# VirtualEnv => Distribute
setenv VIRTUALENV_USE_DISTRIBUTE

setenv BLOCKSIZE K

# this prevents program crashes from leaving large core files around,
# which are useful if you're debugging but not otherwise.
#limit coredumpsize 0

set filec
set ignoreeof
set notify
if (-e ~/.alias) source ~/.alias

setenv EDITOR vim
setenv VISUAL vim
setenv PAGER	less
setenv LESS	"-egMX"

if ($?prompt) then
    stty erase ^H
    stty kill ^U
    stty intr ^C

    set prompt="`hostname -s` `pwd`% "
    alias   cd      'cd \!*; set prompt="`hostname -s` `pwd`% "'
endif
