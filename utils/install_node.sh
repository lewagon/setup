#!/bin/bash

cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
source ~/.zshrc
nvm install 14.0.0
