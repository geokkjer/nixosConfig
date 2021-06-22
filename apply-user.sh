#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/geir/home.nix
popd
