#!/usr/bin/env bash

brew update
brew install yq

echo "::debug::\$cmd: $1"
RESULT=$(eval "$1")
echo "::debug::\$RESULT: $RESULT"
echo "$RESULT" >| "$GITHUB_ACTION_PATH/.result"
