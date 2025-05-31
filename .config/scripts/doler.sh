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
