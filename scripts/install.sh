#!/bin/sh
pushd ~/
sudo ln -sr nixosdotfiles/ /etc/nixos/
cp /etc/nixos/configuration.nix nixosdotfiles/hosts/${HOST}.nix

popd
