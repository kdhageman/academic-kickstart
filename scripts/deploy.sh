#!/usr/bin/env bash

git_msg="Release $(date +%Y-%m-%d\ %H:%M)"

hugo
git add .
git commit -m \"$git_msg\"
git push

cd public
git add .
git commit -m \"$git_msg\"
git push

cd ..
