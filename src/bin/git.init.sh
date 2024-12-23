echo "# $( dirname $( pwd ) )" >> README.md
git init
git branch -M main
echo "origin: "
read origin
git remote add origin "${origin}"
