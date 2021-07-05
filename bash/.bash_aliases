alias apt="sudo apt"
alias apt-get="sudo apt-get"
alias calc='bc -l' #Calculator with Math Support
alias dfh='df -Tha --total'
alias duh='du -ach | sort -h'
alias ll='ls -alhFG'
alias lll='ll | less'
alias l.='ll -d .*'
#alias meminfo='free -mlt'
alias ports='sudo netstat -tulpane'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psq='ps aux | grep -v grep | grep -i -e VSZ -e'
alias set_git_private_email='git config user.email 1455270+deltajuliet@users.noreply.github.com'
alias set_git_private_email_global='git config --global user.email 1455270+deltajuliet@users.noreply.github.com'
alias sshl='ssh-add -l'
alias sshy='ssh -o "ForwardAgent=yes"'
alias tar_bz='tar -bcvf'
alias tar_gz='tar -zcvf'
alias untar_bz='tar -bxvf'
alias untar_gz='tar -zxvf'
alias ..='cd ..' #Shortcut up a dir

#TODO: Need to make this Mac only
message_me () {
    osascript -e ‘tell application “Messages” to send “$1” to buddy “8013368100”’ 
}

yubikey_ssh_enable () {
    ssh-add -l 1> /dev/null 2>/dev/null
#    if [[ $? -eq 0 ]] {
        echo "Enabling Yubikey for use with SSH. Sudo password needed to restart gpg-agent with ssh support..."
        sudo killall gpg-agent
        sudo killall ssh-agent  
        eval $( gpg-agent --daemon --enable-ssh-support )
        ssh-add -l
#    }
}
