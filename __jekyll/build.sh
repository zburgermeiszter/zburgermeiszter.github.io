#!/usr/bin/env bash

# https://github.com/JeroenMols/jeroenmols.github.io/blob/master/jekyll-code/release

echo ""
echo "### Cleaning up resources"
cd ../
ls | grep -v '__jekyll' | xargs rm -rf
cd -
echo ""
echo "### Running jekyll"
sudo docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 127.0.0.1:4000:4000 jekyll/jekyll /bin/sh -c "jekyll build"
echo ""
echo "### Copying generated site"
mv _site/* ../
mv _site/.[!.]* ../
echo ""
echo "### Done"