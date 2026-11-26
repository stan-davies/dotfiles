usage( ) {
        echo "Usage: $0 [<workspace>] [<app>]"
}

if [ $# -eq 0 ]; then
        echo "Error: No arguments given."
        usage
        exit
elif [ $# -eq 1 ]; then
        if [ $1 = "Firefox" ]; then
                app=Firefox
                wsp=B
        elif [ $1 = "Spotify" ]; then
                app=Spotify
                wsp=M
        else
                echo "Error: Insufficient arguments given."
                usage
                exit
        fi
elif [ $# -eq 2 ]; then
        wsp=$1
        app=$2
else
        echo "Error: Too many arguments given."
        usage
        exit
fi

wsps=$(aerospace list-workspaces --all | tr -d '\n')

if [[ ! $wsps =~ $wsp ]]; then
        echo "$wsp is not a valid workspace."
        usage
        exit
fi

if [ -d "/Applications/$app.app" ] || [ -d "/System/Applications/$app.app" ]; then
        aerospace workspace $wsp; open -a $app
else
        echo "$app is not a valid app."
        usage
        exit
fi

