#!/bin/sh

#brew install php55-phalcon
cd /tmp
wget -q --no-check-certificate -O phalcon-tools.zip http://github.com/phalcon/phalcon-devtools/zipball/master
unzip -q phalcon-tools.zip
mv phalcon-phalcon-devtools-* ~/.dotfiles/phalcon-tools/bin
