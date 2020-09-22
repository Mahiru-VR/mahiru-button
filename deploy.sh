#!/usr/bin/env sh

# abort on errors
set -e

rm -rf dist
# build
npm run build

# navigate into the build output directory
cd dist
touch CNAME
echo "mahiru.cn" >> CNAME

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:Mahiru-VR/Mahiru-VR.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
