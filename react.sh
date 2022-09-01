#!/bin/bash

# check version of [Node Version Manager](https://github.com/nvm-sh/nvm)
nvm -v

nvm install node

node - v

# list available versions using ls-remote
nvm ls-remote

nvm list

nvm install-latest-npm

nvm install --latest-npm

npm -v

# create a new react app called my-app
npx create-react-app my-app

cd my-app

npm start
