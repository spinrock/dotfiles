export HISTCONTROL=ignoreboth
export PATH=/usr/local/bin:${PATH}
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export MANPATH=/opt/local/man:${MANPATH}

alias la="ls -a"
alias rm="rm -i"
#alias kerberos="ssh satoshi.fukai@kerberos.sslab.ics.keio.ac.jp"
alias kerberos="ssh -i ~/.ssh/id_rsa satoshi.fukai@kerberos.sslab.ics.keio.ac.jp"
alias mysrv="ssh y18105@logex00.educ.cc.keio.ac.jp"
alias clean="make clean"
alias mysh="/Users/Satoshi-Fukai/Dropbox/mysh/mysh"
alias mywin="ssh -L 3389:192.168.122.129:3389 satoshi@192.168.23.232"
alias rhel="ssh root@192.168.23.72"
alias tex_rm="rm -f *.log *.dvi"
alias port_ker="ssh -L 50001:bpollon:80 satoshi.fukai@kerberos.sslab.ics.keio.ac.jp"
alias tmux="tmux a"

##
# Your previous /Users/Satoshi-Fukai/.bash_profile file was backed up as /Users/Satoshi-Fukai/.bash_profile.macports-saved_2013-03-11_at_22:33:32
##

# MacPorts Installer addition on 2013-03-11_at_22:33:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
eval "$(rbenv init -)"
