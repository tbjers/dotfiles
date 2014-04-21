#!/bin/sh

curl -# http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip > /tmp/iterm.zip
cd /tmp
unzip -uq iterm.zip && sudo mv -f /tmp/iTerm.app /Applications
rm -Rf /tmp/iterm.zip
