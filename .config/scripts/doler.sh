# $# is the number of arguments given (argc)
if [ $# -eq 1 ]; then
        dir=$1
else
        echo "Incorrect quantity of arguments given. Expected 1, given $#."
        exit
        #maybe implement a custom fuzzy finder to do a search in this case
fi

dirname=$(basename "$dir")
tmux new-window -n $dirname -c $dir
# Can't then run 'tree' or anything because it would run that command in the
# same space as all the above, not in the newly created space. Not sussed any
# way around that, but it hardly matters.
