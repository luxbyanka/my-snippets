#!/bin/bash

printf '\33c\e[3J'
set -e

git config user.email 'cro-marmot@outlook.com'
git config user.name 'Celeste Arantes'
git status
git add .
git commit -a -m 'A tombstone chiseled into the code of a machine.'
git push

#git tag -a v0.1 -m 'Working executable .jar template'
#git tag -a v0.2 -m 'Working dependencies with nested jars, splash screen and custom JFrames'
#git push origin v0.2
#git tag -a v0.3 -m 'Working websockets'
#git push origin v0.3