#!/bin/sh

cd orchestrate
git pull
cd ..
git add .
git commit -m "update"
git push
