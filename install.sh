#!/usr/bin/env bash

brew update
brew install yq

echo "::debug::\$cmd: $1"
echo "::set-output name=result::$(eval "$1")"
