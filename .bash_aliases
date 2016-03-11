alias vi='vim -p'
alias h='history'
alias ls='ls -GFh'
alias grep='grep -G'
alias cp='cp -i'
alias rm='rm -i'
alias ll='ls -l'

alias ctags="`brew --prefix`/bin/ctags"
alias eniac='ssh thu@eniac.seas.upenn.edu'
alias cd519='cd /Users/thu/Dropbox/School/cis519'
alias pdflatex='/usr/local/texlive/2015/bin/x86_64-darwin/pdflatex'
alias weir='ssh weir.atl.external.lmco.com'
alias weirX='ssh -X weir.atl.external.lmco.com'
alias weirtunnel='ssh -L 5901:idesk5.lab.insight:5901 thu@weir.atl.external.lmco.com'

function new_tab() {
  TAB_NAME=$1
  COMMAND=$2
  osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"printf '\\\e]1;$TAB_NAME\\\a'; $COMMAND\" in front window" \
    -e "end tell" > /dev/null
}

function scpeniac() {
  scp "$@" thu@eniac.seas.upenn.edu:/home1/t/thu/cis519/; 
}
