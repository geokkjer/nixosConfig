#!/bin/sh
pushd ~/.dotfiles
printf "Updating System Channel"
time ./update-system.sh
printf "Updating User Channel"
time ./update-user.sh
printf "Upgrading System"
time ./apply-system.sh
printf "Upgrading User"
time ./apply-user.sh
popd
