# Automating push with just a single bash command
echo "Enter your message"
read message
git add .
git commit -m "${message}"
if [ -n "$(git status - procelain)"];
then
    echo "IT IS CLEAN"
else
    git status
    echo "Pushing data to remote server!!!"
    git push -u origin master
fi