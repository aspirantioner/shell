#!/bin/bash
#!/bin/sh
#write your shell cmd:

if [ "$1" == "push" ]
then
git add .
git commit -m "push"
git push $2 master --force
else
if [ "$1" == "pull" ]
then
git pull --force $2 master:master
fi
fi
