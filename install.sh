#!/usr/bin/env bash

brew update
brew install yq

echo "::debug::\$cmd: $1"
RESULT=$(eval "$1")
echo "::debug::\$RESULT: $RESULT"
echo "::set-env name=jqresult::$RESULT"
