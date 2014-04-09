#!/bin/sh
echo "  Installing oh-my-zsh for you."
curl -L https://github.com/tbjers/oh-my-zsh/raw/master/tools/install.sh | sh

cp $PWD/fonts/*.otf ~/Library/Fonts
