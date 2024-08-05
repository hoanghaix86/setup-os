#!/bin/bash

sudo apt-get update

sudo apt-get install -y make build-essential libssl-dev \
    zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash

tee -a ~/.zshrc > /dev/null <<EOF
# pyenv
if [ -d "\$HOME/.nvm" ];
then
  export PYENV_ROOT="\$HOME/.pyenv"
  [[ -d \$PYENV_ROOT/bin ]] && export PATH="\$PYENV_ROOT/bin:\$PATH"
  eval "\$(pyenv init -)"
  eval "\$(pyenv virtualenv-init -)"
fi
EOF

# Use
# pyenv install 3.12.4
