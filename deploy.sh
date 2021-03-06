#!/bin/sh

echo "Generating site"
rm -rf public
hugo -t hucore --baseURL https://emostafa.github.io/

echo "Copy published files to emostafa.github.io directoy"
cp -r public/* ../emostafa.github.io

echo "Updating emostafa.github.io"
cd ../emostafa.github.io
git add --all
git commit -am "Publishing to emostafa.github.io"
git push origin master
