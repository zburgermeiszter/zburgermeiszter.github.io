#!/usr/bin/env bash

echo ""
echo "### Running Jekyll server on port 4000"
sudo docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 127.0.0.1:4000:4000 jekyll/jekyll
echo ""
echo "### Done"