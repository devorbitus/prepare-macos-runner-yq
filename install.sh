#!/usr/bin/env bash

echo "::debug::\$cmd: $1"

brew update
brew install yq

echo "::set-output name=result::$(eval "$1")"
