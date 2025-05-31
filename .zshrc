# prompt
#PS1="%B%F{yellow}%1~%  %f$%b "
PS1="%B%F{magenta}%1~%  %f$%b "

alias today='date +%d.%m.%y'

alias cp-notefmt='cp ~/Documents/typst-docs/note-conf/note-conf.typ .'

alias spp='~/.config/scripts/set-proj-path.sh'

alias ct='clear;tree'
alias ctl='clear;tree -l'
alias cta='clear;tree -l -a'
alias et() {
        cd $1; clear; tree
}

alias etl() {
        cd $1; clear; tree -l
}

alias eta() {
        cd $1; clear; tree -l -a
}

# attach to a sessions if there is one otherwise create one anew
if [ -z $TMUX ]; then
        tmux attach || tmux new
fi
