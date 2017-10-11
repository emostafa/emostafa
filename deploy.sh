
#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Generating site"
hugo

echo "Copy published files to emostafa.github.io directoy"
cp -r public/* ../emostafa.github.io

echo "Updating emostafa.github.io"
cd ../emostafa.github.io
git add --all
git commit -am "Publishing to emostafa.github.io"
git push origin master
