#!/bin/bash
#
# "Minimal" tooling required for SimplyScheme.
#
# Directions roughly follow comments at archive.org
# (https://archive.org/details/ucberkeley_webcast_l28HAzKy0N8) for
# Brian Harvey's first SICP lecture but avoid using older (and
# Berkeley-specific versions of STklos and complications like docker.
#

# STklos
#  https://stklos.net/
#  https://github.com/egallesio/STklos
sudo apt install -y curl build-essential libreadline-dev

curl -L -O https://www.stklos.net/download/stklos-1.70.tar.gz
tar xf stklos-1.70.tar.gz
mv stklos-1.70 .STklos-build

cd .STklos-build
./configure
make && sudo make install

# Brian Harvey's scm files
#  Easier than cut-and-paste from his book and hopefully avoids copyright...
curl -L -O https://people.eecs.berkeley.edu/~bh/downloads/simply/simply.scm
curl -L -O https://people.eecs.berkeley.edu/~bh/downloads/simply/functions.scm
