#!/usr/bin/env bash

set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

echo "============================================================================"
pwd

echo "============================================================================"
whoami

echo "============================================================================"
env

echo "============================================================================"
# TODO HERE

cd ~
git clone https://github.com/nvm-sh/nvm.git .nvm
cd .nvm
git checkout v0.39.5

cd ~
. ~/.nvm/nvm.sh
nvm install v14.21.3
nvm use v14.21.3
npm install yarn -g
npm install meteor -g
export PATH=$HOME/.meteor:$PATH
echo $PATH
which node
node --version
set -x

npm  config set -g python /usr/bin/python2
yarn config set python /usr/bin/python2 -g

echo "============================================================================"
