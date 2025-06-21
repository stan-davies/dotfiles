if [ $# -ne 1 ]; then
        echo "Invalid arguments given."
        exit
fi

file=$1
dir=$(pwd)

pdf_f=$(echo $file | sed 's/$/.pdf/')
typ_f=$(echo $file | sed 's/$/.typ/')

# Full path of '*.typ' file.
path=$(echo $dir | sed "s/$/\/$typ_f/")

if ! [ -f $path ]; then
        echo "No such typst file '$file'."
        exit
fi

tmux new-window -d -n "typ-w" -c $dir typst watch $typ_f
tmux new-window -d -n "zath" -c $dir zathura $pdf_f

vim $typ_f
