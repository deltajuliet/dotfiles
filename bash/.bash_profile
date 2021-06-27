alias ll="ls -alhF"
export PS1="\[\e[0;37m\]\! \[\e[0;31m\]\d \t \[\e[0m\]\u@\h \[\e[31m\]\w\[\e[0m\]\n\[\e[0m\]\$ \[\e[31m\]> \[\e[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GITLAB_API_ENDPOINT=https://gitlab.mx.com/api/v4
export GITLAB_API_PRIVATE_TOKEN=3jxsjRasU1b2KXmjfEW6

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

bindgrep()
{
  grep -i -rih $1 ~/Code/lab/ops/bind/* | grep -v PTR   | grep --color $1
}


policygrep()
{
  pdfgrep -in  $1 /Users/dan.jones/Google\ Drive\ File\ Stream/My\ Drive/***Shared/Wiki/MX\ Security/Client-Partner\ Due\ Diligence\ \(under\ NDA\)/*.pdf
}
