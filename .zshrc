# prompt
PS1="%B%F{magenta}%1~%  %f$%b "

# Edit PDF live
alias epl='~/.config/scripts/edit-pdf.sh'

# Copy note format
alias cp-notefmt='cp ~/Documents/typst-docs/note-conf/note-conf.typ .'

# Set (current) project path
alias spp='~/.config/scripts/set-proj-path.sh'

# Clear (with) tree
alias ct='clear;tree'
# Clear (with) tree, -l (I can't remember why I originally made that flag an 'l')
alias ctl='clear;tree -l'
# Clear (with) tree, -l, show all files
alias cta='clear;tree -l -a'
# Enter with tree
alias et() {
        cd $1; clear; tree
}
# Enter with flat tree
alias etl() {
        cd $1; clear; tree -l
}
# Enter with flat, all tree
alias eta() {
        cd $1; clear; tree -l -a
}

# attach to a sessions if there is one otherwise create one anew
if [ -z $TMUX ]; then
        tmux attach || tmux new
fi
