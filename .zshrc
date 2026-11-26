# for git stuff in prompt
# autoload -Uz vcs_info                   # version control info
# precmd_vcs_info() { vcs_info }          # no idea
# precmd_functions+=( precmd_vcs_info )   # haven't the foggiest
# setopt prompt_subst                     # something about prompt substitution?

# prompt
# PROMPT=$'%B%F{magenta}%1~ %(?..%F{red}\U2717%? )%f%b\U25b6 '
PROMPT=$'%F{red}%1~ %f\U2502  '         # for light mode, bm-brt
# PROMPT=$'%B%F{magenta}%1~ %f: %b  '   # for dark mode, bm-dim
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

# Set (current) project path
alias spp='~/.config/scripts/set-proj-path.sh'

# Clear (with) tree
alias ct='clear;tree'
# Clear (with) tree, -l, which sets depth to 1 (I can't remember why I
# originally made that flag an 'l')
alias ctl='clear;tree -l'
# Clear (with) tree, -l, show hidden files
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

alias opp() {
        ~/.config/scripts/roundabout.sh $1 $2
}

# Attach to a session if there is one otherwise create one.
if [ -z $TMUX ]; then
        tmux attach || tmux new
fi
