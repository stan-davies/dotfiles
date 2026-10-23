# for git stuff in prompt
# autoload -Uz vcs_info                   # version control info
# precmd_vcs_info() { vcs_info }          # no idea
# precmd_functions+=( precmd_vcs_info )   # haven't the foggiest
# setopt prompt_subst                     # something about prompt substitution?

# prompt
# PROMPT=$'%B%F{magenta}%1~ %(?..%F{red}\U2717%? )%f%b\U25b6 '
PROMPT=$'%B%F{magenta}%1~ %f:%b '
# RPROMPT=$'%(?..%F{red}\U2717 %?)%f  ${vcs_info_msg_0_}'
RPROMPT=$'%(?..%F{red}\U2717 %?)%f'

# zstyle ':vcs_info:git:*' formats '%r(%b)'     # repo name (branch name)
# zstyle ':vcs_info:*' enable git


# 2723  2717

# Edit PDF live
alias epl='~/.config/scripts/edit-pdf.sh'

# allow use of mit anywhere
export PATH=$PATH:~/Documents/c-code/mit
alias mit='mit'

# Copy note format
alias cp-notefmt='cp ~/Documents/typst-docs/note-conf/note-conf.typ .'

# Set (current) project path
alias spp='~/.config/scripts/set-proj-path.sh'

# Clear (with) tree
alias ct='clear;tree'
# Clear (with) tree, -l, which sets depth to 1 (I can't remember why I
# originally made that flag an 'l')
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
