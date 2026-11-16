#! /usr/bin/bash
MMMM=$(cd "$(dirname "$0")" && pwd)
echo "Super duper uber mega secret dir: ${MMMM}/susidian_stuffs.sh (:0000000)"
source "${MMMM}/susidian_stuffs.sh"
if [ "$CD" == "" ] || [ "$URL" == "" ]
then
echo "SET THE STUFF IN THE FILE :0"
exit 67
fi

echo "GitHub URL to be yeeted to: $URL"
echo "Current Working Directory (if it isnt obsidian youre so screwed you rat :D) $CD"
cd
cd "$CD"
git init

echo "passed init feleing kinda cute might explode later"
git switch main 2>/dev/null || git switch -c main
echo  $(git branch --show-current)

while getopts "eim:" arg; do
    case $arg in
        m)
        git pull "$URL" main
        git add .
        git commit -m "$OPTARG ($(date +%Y-%m-%d))"
        git push -u $URL main
        echo "such PUSHHHH (rly commited to the bit waw)! :DDDDDDD with message ${OPTARG} ($(date +%Y-%m-%d))"
        ;;
        i)
        git pull "$URL" main
        echo "such PULLLLL (unlike the huzz)! :DDDDDDD"
        ;;
        e)
        git pull "$URL" main
        git add .
        git commit -m "UPDATE :D ($(date +%Y-%m-%d))"
        git push -u "$URL" main
        echo "such PUSHHHH (rly commited to the bit waw)! :DDDDDDD"
        ;;
        \?) 
        echo "not a command you turtle"
        ;;
    esac
done