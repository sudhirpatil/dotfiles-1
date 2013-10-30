# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/bin:/home/y/bin:/usr/local/bin/:/opt/node/bin:/var/opt/protobuf-2.5.0/src
#export PATH

#export PATH=$PATH:/home/y/bin

export SVN_SSH=/usr/local/bin/yssh
export SVNROOT=svn+ssh://svn.corp.yahoo.com/
export SVN_EDITOR=/usr/bin/vim
export GIT_SSH=/usr/local/bin/yssh

#export PATH=${PATH}:/home/y/bin:/usr/local/bin/
export LEGO_SRC_ROOT=/home/sudhirp/lego

PS1="["
PS1="$PS1\[\e[36m\]\u\[\e[0m\]"
PS1="$PS1@"
PS1="$PS1\[\e[34;1m\]\h\[\e[0m\]"
if [ "x$YROOT_NAME" != "x" ]; then
 # Yroot Indicator
 #PS1="$PS1:"
 PS1="$PS1:\[\e[38;1m\]$YROOT_NAME\[\e[0m\]"
fi
PS1="$PS1 \W"
PS1="$PS1]"
PS1="$PS1\\$ "

export LEGO_DOMAIN='global.media.pool.sp2.yahoo.com'
if [ -z $YROOT_NAME ]
then 
    #yroot lego_japi_dev
    #yroot lego_fe
    echo ""
elif [ $YROOT_NAME == 'lego_fe' -a -e lego/modules/vyc ]
then
    cd lego/modules/
    #cd lego/modules/vyc 
    pwd
fi

#stty stop

#alias grep='grep --exclude "*\.svn*"'
alias videojapi='cd /home/sudhirp/javaws_svn/videos/'
alias videomodule='/home/sudhirp/lego/modules/vyc/'
