# Pulls latest changes and restarts the bot
git checkout -- package-lock.json # Ignore local package-lock changes
git pull origin master
if [ $1 == "--reinstall" ]
then
    npm install
fi
npm run-script restart