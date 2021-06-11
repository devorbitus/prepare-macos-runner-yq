#!/usr/bin/env bash

echo "::debug::\$cmd: $1"

if ! command -v yq &> /dev/null
then
    echo "yq command could not be found, so installing it"
    if ! command -v brew &> /dev/null
    then
        echo "::error::brew command could not be found, so aborting"
        exit 1
    else
        brew update
    fi
    brew install yq
fi

# print this again because installing uses a lot of lines
echo "::debug::\$cmd: $1"
echo "::set-output name=result::$(eval "$1")"
