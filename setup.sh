#!/bin/bash

# STklos
#  https://stklos.net/
#  https://github.com/egallesio/STklos
sudo apt install -y curl build-essential libreadline-dev

curl -O http://www.stklos.net/download/stklos-1.70.tar.gz
tar xf stklos-1.70.tar.gz
mv stklos-1.70 .STklos-build

cd .STklos-build
./configure
make && sudo make install

# Brian Harvey's scm files
#  Easier than cut-and-paste from his book and hopefully avoids copyright...
curl -O https://people.eecs.berkeley.edu/~bh/downloads/simply/simply.scm
curl -O https://people.eecs.berkeley.edu/~bh/downloads/simply/functions.scm
