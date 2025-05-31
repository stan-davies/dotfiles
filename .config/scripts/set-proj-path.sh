usage( ) {
        echo "Usage: $0 [-l <string>] [-n <string>].\n\tl: project language\n\tn: project name"
}

while getopts ":l:n:" o; do
        case "${o}" in
                l)
                        lang=${OPTARG}
                        ;;
                n)
                        name=${OPTARG}
                        ;;
                *)
                        usage
                        exit
                        ;;
        esac
done

if [ -z "${lang}" ] || [ -z "${name}" ]; then
        usage
        exit
fi

PATH="${lang}-code/${name}"
FULL="/Users/stand/Documents/${PATH}"
if [ ! -d "$FULL" ]; then
        usage
        exit
fi

echo "${PATH}" > ~/.config/curr-proj
echo "Current project path successfully updated to ${PATH}."
