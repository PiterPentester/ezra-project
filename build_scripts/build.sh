#!/bin/sh
# This script triggers all the steps necessary for building and packaging Ezra Project on Linux.

npm install
npm run rebuild
rm -rf /tmp/electron-packager &> /dev/null
npm run purge-build-artifacts
npm run cleanup-gyp-shebang
npm run package-linux
