#!/bin/bash

# check version of [Node Version Manager](https://github.com/nvm-sh/nvm)
nvm -v

# examples:
nvm use 18
nvm use 18.12.1
nvm install 18.12.1

nvm install node

node -v

# list available versions using ls-remote
nvm ls-remote

nvm list

nvm install-latest-npm

nvm install --latest-npm

npm -v

# create a new react app called my-app
npx create-react-app my-app

# add typescript
npx create-react-app my-app --template typescript

cd my-app

npm start

# to add TypeScript to an existing Create React App project, first install it:
npm install --save typescript @types/node @types/react @types/react-dom @types/jest
# next, rename any file to be a TypeScript file (e.g. src/index.js to src/index.tsx) and restart your development server!
