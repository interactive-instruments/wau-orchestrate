#!/bin/sh

cd orchestrate
git pull
cd ..

cd WaU-UC2
git pull
cd ..

git add .
git commit -m "update"
git push
