#!/usr/bin/env bash

echo "::debug::\$cmd: $1"

brew update
brew install yq

# print this again because installing uses a lot of lines
echo "::debug::\$cmd: $1"
echo "::set-output name=result::$(eval "$1")"
