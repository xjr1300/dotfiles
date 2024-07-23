#!/bin/sh
set -x

dir=$(dirname $0)
for dotfile in $(ls -A | grep -e "^\..\+"); do
    if [ ${dotfile} != '..' ] && [ ${dotfile} != '.git' ]; then
        ln -Fis "${dir}/${dotfile}" "${HOME}"
    fi
done
