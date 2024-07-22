#!/bin/sh
set -x

for dotfile in .?*; do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]; then
        ln -Fis "${PWD}/${dotfile}" "${HOME}"
    fi
done

