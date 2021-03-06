#!/bin/bash
set -e

# verify the software

current_directory="$PWD"

cd $(dirname $0)

time {
    ./dependencycheck.sh
    ./build.sh
}

cd "$current_directory"
