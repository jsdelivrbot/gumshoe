#!/bin/sh

#remote
repo=$1
test -z $repo && echo "Repo name required." 1>&2 && exit 1

curl -u 'hollerith' https://api.github.com/user/repos -d "{\"name\":\"$repo\"}"

#local
git config --global user.name "hollerith"
git config --global user.email hollerith@gmail.com

git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/hollerith/$repo.git
git push -u origin master

