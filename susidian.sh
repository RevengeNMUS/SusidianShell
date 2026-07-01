#! /usr/bin/bash
MMMM="$(dirname -- "$0")"
echo "Super duper uber mega secret dir: ${MMMM}/susidian_stuffs.sh (:0000000)"
source "${MMMM}/susidian_stuffs.sh"
if [$CD == ""] || [$URL == ""]
then
echo "SET THE STUFF IN THE FILE :0"
exit 67
fi

echo "GitHub URL to be yeeted to: $URL"
echo "Current Working Directory (if it isnt obsidian youre so screwed you rat :D) $CD"
cd
cd "$CD"
git init
git switch -c main

while getopts "eim:" arg; do
    case $arg in
        m)
        git pull $URL main
        git add .
        git commit -m "$OPTARG"
        git push -u $URL main
        echo "such PUSHHHH (rly commited to the bit waw)! :DDDDDDD with message ${OPTARG}"
        ;;
        i)
        git pull $URL main
        echo "such PULLLLL (unlike the huzz)! :DDDDDDD"
        ;;
        e)
        git pull $URL main
        git add .
        git commit -m "UPDATE :D"
        git push -u $URL main
        echo "such PUSHHHH (rly commited to the bit waw)! :DDDDDDD"
        ;;
        \?) 
        echo "not a command you turtle"
        ;;
    esac
done